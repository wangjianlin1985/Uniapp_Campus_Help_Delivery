package com.study.task.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.study.common.core.base.BaseController;
import com.study.common.core.domain.AjaxResult;
import com.study.common.core.page.TableDataInfo;
import com.study.common.util.DateUtils;
import com.study.task.entity.Parcel;
import com.study.task.entity.Taskfood;
import com.study.task.entity.Taskgoods;
import com.study.task.entity.Taskother;
import com.study.task.entity.Taskprint;
import com.study.task.service.DetailService;
import com.study.task.service.ParcelService;
import com.study.task.service.TaskfoodService;
import com.study.task.service.TaskgoodsService;
import com.study.task.service.TaskotherService;
import com.study.task.service.TaskprintService;

import cn.hutool.core.convert.Convert;

/**
 * 订单管理
 */
@Controller
@RequestMapping("/task/order")
public class OrderController extends BaseController {

	private static String prefix = "task/order";
	@Autowired
	private TaskfoodService taskfoodService;
	@Autowired
	private TaskgoodsService taskgoodsService;
	@Autowired
	private TaskotherService taskotherService;
	@Autowired
	private TaskprintService taskprintService;
	@Autowired
	private ParcelService parcelService;
	@Autowired
	private DetailService detailService;
	
	
	/***************外卖**************/
	@RequestMapping("food")
	public String food() {
		return prefix + "/food";
	}
	
	
	@RequestMapping("food/list")
	@ResponseBody
	public TableDataInfo foodList(Taskfood taskfood) {
		startPage();
		List<Taskfood> list = taskfoodService.list(taskfood);
		return getDataTable(list);
	}
	
	@RequestMapping("food/remove")
	@ResponseBody
	@Transactional
	public AjaxResult foodRemove(Long ids) {
		detailService.deleteByOrderId(ids, "wm");
		return toAjax(taskfoodService.deleteById(ids));
	}
	
	
	
	
	/***************购物**************/
	@RequestMapping("goods")
	public String goods() {
		return prefix + "/goods";
	}
	
	
	@RequestMapping("goods/list")
	@ResponseBody
	public TableDataInfo goodsList(Taskgoods taskgoods) {
		startPage();
		List<Taskgoods> list = taskgoodsService.list(taskgoods);
		return getDataTable(list);
	}
	
	@RequestMapping("goods/remove")
	@ResponseBody
	@Transactional
	public AjaxResult goodsRemove(Long ids) {
		detailService.deleteByOrderId(ids, "gw");
		return toAjax(taskgoodsService.deleteById(ids));
	}
	
	
	
	/***************打印**************/
	@RequestMapping("print")
	public String print() {
		return prefix + "/print";
	}
	
	
	@RequestMapping("print/list")
	@ResponseBody
	public TableDataInfo printList(Taskprint taskprint) {
		startPage();
		List<Taskprint> list = taskprintService.list(taskprint);
		return getDataTable(list);
	}
	
	@RequestMapping("print/remove")
	@ResponseBody
	@Transactional
	public AjaxResult printRemove(Long ids) {
		detailService.deleteByOrderId(ids, "dy");
		return toAjax(taskprintService.deleteById(ids));
	}
	
	
	/***************其他**************/
	@RequestMapping("other")
	public String other() {
		return prefix + "/other";
	}
	
	
	@RequestMapping("other/list")
	@ResponseBody
	public TableDataInfo otherList(Taskother taskother) {
		startPage();
		List<Taskother> list = taskotherService.list(taskother);
		return getDataTable(list);
	}
	
	@RequestMapping("other/remove")
	@ResponseBody
	@Transactional
	public AjaxResult otherRemove(Long ids) {
		detailService.deleteByOrderId(ids, "qt");
		return toAjax(taskotherService.deleteById(ids));
	}
	
	
	
	/***************快递**************/
	@RequestMapping("parcel")
	public String parcel() {
		return prefix + "/parcel";
	}
	
	
	@RequestMapping("parcel/list")
	@ResponseBody
	public TableDataInfo parcelList(Parcel parcel) {
		startPage();
		List<Parcel> list = parcelService.list(parcel);
		return getDataTable(list);
	}
	
	@RequestMapping("parcel/remove")
	@ResponseBody
	@Transactional
	public AjaxResult parcelRemove(Long ids) {
		detailService.deleteByOrderId(ids, "qt");
		return toAjax(parcelService.deleteById(ids));
	}
	
	
	
	/***************更改状态**************/
	@ResponseBody
	@RequestMapping("updateStatus")
	// 2配送中，3已完成，4已取消
	public AjaxResult updateStatus(HttpServletRequest request) {
		Long id = Convert.toLong(request.getParameter("id"));
		Integer status = Convert.toInt(request.getParameter("status"));
		String type = Convert.toStr(request.getParameter("type"));
		int r = 0;
		
		if ("wm".equals(type)) {
			Taskfood taskfood = new Taskfood();
			taskfood.setId(id);
			taskfood.setStatus(status);
			taskfood.setWcsj(DateUtils.getTime());
			if (0 == status) {
				r += taskfoodService.updateUnjd(taskfood);
			} else if (2 == status) {
				r += taskfoodService.updatePs(taskfood);
			} else if (3 == status) {
				r += taskfoodService.updateWc(taskfood);
			} else if (4 == status) {
				r += taskfoodService.cancel(id);
			}
		} else if ("gw".equals(type)) {
			Taskgoods taskgoods = new Taskgoods();
			taskgoods.setId(id);
			taskgoods.setStatus(status);
			taskgoods.setWcsj(DateUtils.getTime());
			if (0 == status) {
				r += taskgoodsService.updateUnjd(taskgoods);
			} else if (2 == status) {
				r += taskgoodsService.updatePs(taskgoods);
			} else if (3 == status) {
				r += taskgoodsService.updateWc(taskgoods);
			} else if (4 == status) {
				r += taskgoodsService.cancel(id);
			}
		} else if ("kd".equals(type)) {
			Parcel parcel = new Parcel();
			parcel.setId(id);
			parcel.setStatus(status);
			parcel.setWcsj(DateUtils.getTime());
			if (0 == status) {
				r += parcelService.updateUnjd(parcel);
			} else if (2 == status) {
				r += parcelService.updatePs(parcel);
			} else if (3 == status) {
				r += parcelService.updateWc(parcel);
			} else if (4 == status) {
				r += parcelService.cancel(parcel);
			}
		} else if ("dy".equals(type)) {
			Taskprint taskprint = new Taskprint();
			taskprint.setId(id);
			taskprint.setStatus(status);
			taskprint.setWcsj(DateUtils.getTime());
			if (0 == status) {
				r += taskprintService.updateUnjd(taskprint);
			} else if (2 == status) {
				r += taskprintService.updatePs(taskprint);
			} else if (3 == status) {
				r += taskprintService.updateWc(taskprint);
			} else if (4 == status) {
				r += taskprintService.cancel(id);
			}
		} else if ("qt".equals(type)) {
			Taskother taskother = new Taskother();
			taskother.setId(id);
			taskother.setStatus(status);
			taskother.setWcsj(DateUtils.getTime());
			if (0 == status) {
				r += taskotherService.updateUnjd(taskother);
			} else if (2 == status) {
				r += taskotherService.updatePs(taskother);
			} else if (3 == status) {
				r += taskotherService.updateWc(taskother);
			} else if (4 == status) {
				r += taskotherService.cancel(id);
			}
		}
		return toAjax(r);
	}
}