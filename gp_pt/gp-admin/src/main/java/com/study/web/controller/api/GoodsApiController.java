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
import com.study.task.entity.Goods;
import com.study.task.entity.Taskgoods;
import com.study.task.entity.TaskgoodsDetail;
import com.study.task.service.DetailService;
import com.study.task.service.GoodsService;
import com.study.task.service.TaskgoodsDetailService;
import com.study.task.service.TaskgoodsService;

/**
 * 购物跑腿相关接口 
 */
@RestController
@RequestMapping("openapi/goods")
@CrossOrigin
public class GoodsApiController extends BaseController{

	@Autowired
	private TaskgoodsDetailService taskgoodsDetailService;
	@Autowired
	private TaskgoodsService taskgoodsService;
	@Autowired
	private SysUserService userService;
	@Autowired
	private DetailService detailService;
	@Autowired
	private SysConfigService configService;
	@Autowired
	private GoodsService goodsService;
	
	
	@RequestMapping("goodsList")
	public TableDataInfo goodsList() {
		List<Goods> list = goodsService.listAllRedis();
		System.out.println(list);
		return getDataTable(list);
	}
	
	@RequestMapping("get/{id}")
	public AjaxResult get(@PathVariable Long id) {
		Taskgoods taskgoods = taskgoodsService.getById(id);
		taskgoods.setDetailList(taskgoodsDetailService.listByTaskgoodsId(id));
		return AjaxResult.success(taskgoods);
	}
	
	
	/******************以下为用户相关接口************************/
	
	// 用户的所有订单
	@RequestMapping("user/list")
	public TableDataInfo userList() {
		Long userId = getHeaderUserId();
		SysUser user = new SysUser();
		user.setUserId(userId);
		Taskgoods taskgoods = new Taskgoods();
		taskgoods.setUser(user);
		List<Taskgoods> list = taskgoodsService.list(taskgoods);
		for(Taskgoods tf : list) {
			tf.setDetailList(taskgoodsDetailService.listByTaskgoodsId(tf.getId()));	
		}
		return getDataTable(list);
	}
	
	// 用户新下单
	@RequestMapping("user/add")
	@Transactional
	public AjaxResult userAdd(@RequestBody Taskgoods taskgoods) {
		Long userId = getHeaderUserId();
		SysUser user = new SysUser();
		user.setUserId(userId);
		taskgoods.setUser(user);
		taskgoods.setFbsj(DateUtils.getTime());
		// 设置单号，GW + 随机数
		taskgoods.setNum("gw" + RandomDataUtil.getSerNum());
		float moneyGoods = 0;
		List<Goods> goodsList = taskgoods.getGoodsList();
		for(Goods goods : goodsList) {
			moneyGoods += goods.getPrice();
		}
		taskgoods.setMoneyGoods(moneyGoods);
		float moneyPaotui = getMoneyByDistance(taskgoods.getDistance());
		taskgoods.setMoneyPaotui(moneyPaotui);
		taskgoods.setMoney(moneyGoods + moneyPaotui);
		int r = taskgoodsService.add(taskgoods);
		
		if (r > 0) {
			for(Goods goods : goodsList) {
				TaskgoodsDetail detail = new TaskgoodsDetail();
				detail.setGoods(goods);
				detail.setTaskgoodsId(taskgoods.getId());
				taskgoodsDetailService.add(detail);
			}
		}
		return toAjax(r);
	}
	
	// 用户修改
	@RequestMapping("user/update")
	@Transactional
	public AjaxResult userUpdate(@RequestBody Taskgoods taskgoods) {
		float moneyGoods = 0;
		List<Goods> goodsList = taskgoods.getGoodsList();
		for(Goods goods : goodsList) {
			moneyGoods += goods.getPrice();
		}
		taskgoods.setMoneyGoods(moneyGoods);
		float moneyPaotui = getMoneyByDistance(taskgoods.getDistance());
		taskgoods.setMoneyPaotui(moneyPaotui);
		taskgoods.setMoney(moneyGoods + moneyPaotui);
		int r = taskgoodsService.update(taskgoods);
		
		if (r > 0) {
			taskgoodsDetailService.deleteByTaskgoodsId(taskgoods.getId());
			for(Goods goods : goodsList) {
				TaskgoodsDetail detail = new TaskgoodsDetail();
				detail.setGoods(goods);
				detail.setTaskgoodsId(taskgoods.getId());
				taskgoodsDetailService.add(detail);
			}
		}
		return toAjax(r);
	}
	
	// 取消订单
	@RequestMapping("user/cancel/{id}")
	public AjaxResult cancel(@PathVariable Long id) {
		return toAjax(taskgoodsService.cancel(id));
	}
	
	
	/**
	 * 根据距离计算跑腿费
	 * @param distance
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
	
	
	/******************以下为跑腿员相关接口************************/
	
	// 待接单
	@RequestMapping("pty/todoList")
	public TableDataInfo todoList() {
		Taskgoods taskgoods = new Taskgoods();
		taskgoods.setStatus(0);
		List<Taskgoods> list = taskgoodsService.list(taskgoods);
		return getDataTable(list);
	}
	
	// 我的单子列表
	@RequestMapping("pty/list")
	public TableDataInfo ptyList() {
		Long userId = getHeaderUserId();
		SysUser user = new SysUser();
		user.setUserId(userId);
		Taskgoods goods = new Taskgoods();
		goods.setPty(user);
		List<Taskgoods> list = taskgoodsService.list(goods);
		return getDataTable(list);
	}
	
	
	// 接单
	@RequestMapping("pty/jd/{id}")
	public AjaxResult ptyJd(@PathVariable Long id) {
		Taskgoods taskgoods = new Taskgoods();
		Long userId = getHeaderUserId();
		int rz = userService.getRz(userId);
		if (rz != 1) {
			return error("骑手身份尚未认证或未通过,不允许接单");
		}
		SysUser user = new SysUser();
		user.setUserId(userId);
		taskgoods.setPty(user);
		taskgoods.setId(id);
		taskgoods.setJdsj(DateUtils.getTime());
		return toAjax(taskgoodsService.updateJd(taskgoods));
	}
	
	
	// 派送
	@RequestMapping("pty/ps/{id}")
	public AjaxResult ptyPs(@PathVariable Long id) {
		Taskgoods taskgoods = new Taskgoods();
		taskgoods.setId(id);
		return toAjax(taskgoodsService.updatePs(taskgoods));
	}
	
	// 完成
	@Transactional
	@RequestMapping("pty/wc/{id}")
	public AjaxResult ptyWc(@PathVariable Long id) {
		
		Taskgoods newTaskgoods = taskgoodsService.getById(id);
		
		Long ptyId = newTaskgoods.getPty().getUserId();
		Long userId= newTaskgoods.getUser().getUserId();
		
		// 判断余额是否充足
		float balance = userService.getBalance(userId);
		float money = newTaskgoods.getMoney();
		if (balance < money) {
			return error("用户余额不足，扣款失败，请联系用户充值后再扣款");
		}
		
		Taskgoods taskgoods = new Taskgoods();
		taskgoods.setId(id);
		taskgoods.setWcsj(DateUtils.getTime());
		int r = taskgoodsService.updateWc(taskgoods);
		
		if (r > 0) {
			// 1 插入跑腿员的流水
			Detail detail = new Detail();
			detail.setUserId(ptyId);
			detail.setUtype("pty");
			detail.setTime(taskgoods.getWcsj());
			detail.setIo("in");
			detail.setType("gw");
			detail.setOrderId(newTaskgoods.getId());
			detail.setMoney(newTaskgoods.getMoneyPaotui());
			detail.setRemark("购物跑腿收入");
			detailService.add(detail);
			
			// 2 插入用户的流水
			Detail detail2 = new Detail();
			detail2.setUserId(userId);
			detail2.setUtype("user");
			detail2.setTime(taskgoods.getWcsj());
			detail2.setIo("out");
			detail2.setType("gw");
			detail2.setOrderId(newTaskgoods.getId());
			detail2.setMoney(newTaskgoods.getMoney());
			detail2.setRemark("购物支出");
			detailService.add(detail2);

			// 3 修改跑腿员余额，加钱
			float balance1 = userService.getBalance(ptyId);
			userService.updateBalance(ptyId, balance1 + newTaskgoods.getMoneyPaotui());
			
			// 4 修改用户余额，减钱
			userService.updateBalance(userId, balance - newTaskgoods.getMoney());
		}
		return toAjax(r);
	}	
}
