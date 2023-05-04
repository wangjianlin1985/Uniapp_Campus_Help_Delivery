package com.study.web.controller.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.study.common.core.base.BaseController;
import com.study.common.core.domain.AjaxResult;
import com.study.common.core.page.TableDataInfo;
import com.study.common.util.DateUtils;
import com.study.common.util.RandomDataUtil;
import com.study.system.entity.SysUser;
import com.study.system.service.SysConfigService;
import com.study.system.service.SysUserService;
import com.study.task.entity.Detail;
import com.study.task.entity.Taskprint;
import com.study.task.service.DetailService;
import com.study.task.service.TaskprintService;

/**
 * 购物跑腿相关接口 
 */
@RestController
@RequestMapping("openapi/print")
@CrossOrigin
public class PrintApiController extends BaseController{

	@Autowired
	private TaskprintService taskprintService;
	@Autowired
	private SysUserService userService;
	@Autowired
	private DetailService detailService;
	@Autowired
	private SysConfigService configService;
	
	
	@RequestMapping("get/{id}")
	public AjaxResult get(@PathVariable Long id) {
		Taskprint taskprint = taskprintService.getById(id);
		return AjaxResult.success(taskprint);
	}
	
	/******************以下为用户相关接口************************/
	
	// 用户的所有订单
	@RequestMapping("user/list")
	public TableDataInfo userList() {
		Long userId = getHeaderUserId();
		SysUser user = new SysUser();
		user.setUserId(userId);
		Taskprint taskprint = new Taskprint();
		taskprint.setUser(user);
		List<Taskprint> list = taskprintService.list(taskprint);
		return getDataTable(list);
	}
	
	// 用户新下单
	@RequestMapping("user/add")
	public AjaxResult userAdd(@RequestBody Taskprint taskprint) {
		Long userId = getHeaderUserId();
		SysUser user = new SysUser();
		user.setUserId(userId);
		taskprint.setUser(user);
		taskprint.setFbsj(DateUtils.getTime());
		// 设置单号，GW + 随机数
		taskprint.setNum("dy" + RandomDataUtil.getSerNum());
		float moneyPrint = getPrintMoney(taskprint.getPages());
		float moneyPaotui = getMoneyByDistance(taskprint.getDistance());
		taskprint.setMoneyPaotui(moneyPaotui);
		taskprint.setMoney(moneyPrint + moneyPaotui);
		int r = taskprintService.add(taskprint);
		return toAjax(r);
	}
	
	// 用户修改
	@RequestMapping("user/update")
	public AjaxResult userUpdate(@RequestBody Taskprint taskprint) {
		float moneyPrint = getPrintMoney(taskprint.getPages());
		float moneyPaotui = getMoneyByDistance(taskprint.getDistance());
		taskprint.setMoneyPaotui(moneyPaotui);
		taskprint.setMoney(moneyPrint + moneyPaotui);
		int r = taskprintService.update(taskprint);
		return toAjax(r);
	}
	
	// 取消订单
	@RequestMapping("user/cancel/{id}")
	public AjaxResult cancel(@PathVariable Long id) {
		return toAjax(taskprintService.cancel(id));
	}
	
	
	/**
	 * 根据距离计算跑腿费
	 * @param weight
	 * 如果距离 < 起步距离，则价格 = 起步价
	 * 如果距离 > 起步距离，则价格 = 起步价 + 超重部分(向上取整) * 距离单价
	 * @return
	 */
	public float getMoneyByDistance(float distance) {
		float pricePaotuiStart = configService.getPricePaotuiStart();
		float pricePaotuiOne = configService.getPricePaotuOne();
		float distancenParcelStart = configService.getDistancePaotuStart();
		if (distancenParcelStart >= distance) {
			return pricePaotuiStart;
		} else {
			float highter = (float)Math.ceil(distance - distancenParcelStart);
			return pricePaotuiStart + pricePaotuiOne + highter;
		}
	}
	
	/**
	 * 根据打印张数计算打印费用
	 * @param pages
	 * @return
	 */
	public float getPrintMoney(int pages) {
		float pricePrintStart = configService.getPricePrintStart();
		float pricePrintOne = configService.getPricePrintOne();
		float pagesPrintStart = configService.getPagesPrintStart();
		if (pagesPrintStart >= pages) {
			return pricePrintStart;
		} else {
			float highter = (float)Math.ceil(pages - pagesPrintStart);
			return pricePrintStart + pricePrintOne + highter;
		}
	}
	
	
	/******************以下为跑腿员相关接口************************/
	
	// 待接单
	@RequestMapping("pty/todoList")
	public TableDataInfo todoList() {
		Taskprint taskprint = new Taskprint();
		taskprint.setStatus(0);
		List<Taskprint> list = taskprintService.list(taskprint);
		return getDataTable(list);
	}
	
	
	// 我的单子列表
	@RequestMapping("pty/list")
	public TableDataInfo ptyList() {
		Long userId = getHeaderUserId();
		SysUser user = new SysUser();
		user.setUserId(userId);
		Taskprint taskprint = new Taskprint();
		taskprint.setPty(user);
		List<Taskprint> list = taskprintService.list(taskprint);
		return getDataTable(list);
	}
	
	
	// 接单
	@RequestMapping("pty/jd/{id}")
	public AjaxResult ptyJd(@PathVariable Long id) {
		Taskprint taskprint = new Taskprint();
		Long userId = getHeaderUserId();
		int rz = userService.getRz(userId);
		if (rz != 1) {
			return error("骑手身份尚未认证或未通过,不允许接单");
		}
		SysUser user = new SysUser();
		user.setUserId(userId);
		taskprint.setPty(user);
		taskprint.setId(id);
		taskprint.setJdsj(DateUtils.getTime());
		return toAjax(taskprintService.updateJd(taskprint));
	}
	
	
	// 派送
	@RequestMapping("pty/ps/{id}")
	public AjaxResult ptyPs(@PathVariable Long id) {
		Taskprint taskprint = new Taskprint();
		taskprint.setId(id);
		return toAjax(taskprintService.updatePs(taskprint));
	}
	
	// 完成
	@Transactional
	@RequestMapping("pty/wc/{id}")
	public AjaxResult ptyWc(@PathVariable Long id) {
		
		Taskprint newTaskprint = taskprintService.getById(id);
		
		Long ptyId = newTaskprint.getPty().getUserId();
		Long userId= newTaskprint.getUser().getUserId();
		
		// 判断余额是否充足
		float balance = userService.getBalance(userId);
		float money = newTaskprint.getMoney();
		if (balance < money) {
			return error("用户余额不足，扣款失败，请联系用户充值后再扣款");
		}
		
		Taskprint taskprint = new Taskprint();
		taskprint.setId(id);
		taskprint.setWcsj(DateUtils.getTime());
		int r = taskprintService.updateWc(taskprint);
		
		if (r > 0) {
			// 1 插入跑腿员的流水
			Detail detail = new Detail();
			detail.setUserId(ptyId);
			detail.setUtype("pty");
			detail.setTime(taskprint.getWcsj());
			detail.setIo("in");
			detail.setType("dy");
			detail.setOrderId(newTaskprint.getId());
			detail.setMoney(newTaskprint.getMoneyPaotui());
			detail.setRemark("打印跑腿收入");
			detailService.add(detail);
			
			// 2 插入用户的流水
			Detail detail2 = new Detail();
			detail2.setUserId(userId);
			detail2.setUtype("user");
			detail2.setTime(taskprint.getWcsj());
			detail2.setIo("out");
			detail2.setType("dy");
			detail2.setOrderId(newTaskprint.getId());
			detail2.setMoney(newTaskprint.getMoney());
			detail2.setRemark("打印支出");
			detailService.add(detail2);

			// 3 修改跑腿员余额，加钱
			float balance1 = userService.getBalance(ptyId);
			userService.updateBalance(ptyId, balance1 + newTaskprint.getMoneyPaotui());
			
			// 4 修改用户余额，减钱
			userService.updateBalance(userId, balance - newTaskprint.getMoney());
		}
		return toAjax(r);
	}	
}
