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
import com.study.task.entity.Food;
import com.study.task.entity.Taskfood;
import com.study.task.entity.TaskfoodDetail;
import com.study.task.service.DetailService;
import com.study.task.service.FoodService;
import com.study.task.service.TaskfoodDetailService;
import com.study.task.service.TaskfoodService;

/**
 * 外卖跑腿相关接口 
 */
@RestController
@RequestMapping("openapi/food")
@CrossOrigin
public class FoodApiController extends BaseController{

	@Autowired
	private TaskfoodDetailService taskfoodDetailService;
	@Autowired
	private TaskfoodService taskfoodService;
	@Autowired
	private SysUserService userService;
	@Autowired
	private DetailService detailService;
	@Autowired
	private SysConfigService configService;
	@Autowired
	private FoodService foodService;
	
	@RequestMapping("foodList")
	public TableDataInfo foodList() {
		return getDataTable(foodService.listAllRedis());
	}
	
	@RequestMapping("get/{id}")
	public AjaxResult get(@PathVariable Long id) {
		Taskfood taskfood = taskfoodService.getById(id);
		taskfood.setDetailList(taskfoodDetailService.listByTaskfoodId(id));
		return AjaxResult.success(taskfood);
	}
	
	
	/******************以下为用户相关接口************************/
	
	// 用户的所有订单
	@RequestMapping("user/list")
	public TableDataInfo userList() {
		Long userId = getHeaderUserId();
		SysUser user = new SysUser();
		user.setUserId(userId);
		Taskfood taskfood = new Taskfood();
		taskfood.setUser(user);
		List<Taskfood> list = taskfoodService.list(taskfood);
		for(Taskfood tf : list) {
			tf.setDetailList(taskfoodDetailService.listByTaskfoodId(tf.getId()));	
		}
		return getDataTable(list);
	}
	
	// 用户新下单
	@RequestMapping("user/add")
	@Transactional
	public AjaxResult userAdd(@RequestBody Taskfood taskfood) {
		Long userId = getHeaderUserId();
		SysUser user = new SysUser();
		user.setUserId(userId);
		taskfood.setUser(user);
		taskfood.setFbsj(DateUtils.getTime());
		// 设置单号，WM + 随机数
		taskfood.setNum("wm" + RandomDataUtil.getSerNum());
		float moneyFood = 0;
		List<Food> foodList = taskfood.getFoodList();
		for(Food food : foodList) {
			moneyFood += food.getPrice();
		}
		taskfood.setMoneyFood(moneyFood);
		float moneyPaotui = getMoneyByDistance(taskfood.getDistance());
		taskfood.setMoneyPaotui(moneyPaotui);
		taskfood.setMoney(moneyFood + moneyPaotui);
		
		int r = taskfoodService.add(taskfood);
		if (r > 0) {
			for(Food food : foodList) {
				TaskfoodDetail detail = new TaskfoodDetail();
				detail.setFood(food);
				detail.setTaskfoodId(taskfood.getId());
				taskfoodDetailService.add(detail);
			}
		}
		return toAjax(r);
	}
	
	// 用户修改
	@Transactional
	@RequestMapping("user/update")
	public AjaxResult userUpdate(@RequestBody Taskfood taskfood) {
		float moneyFood = 0;
		List<Food> foodList = taskfood.getFoodList();
		for(Food food : foodList) {
			moneyFood += food.getPrice();
		}
		taskfood.setMoneyFood(moneyFood);
		float moneyPaotui = getMoneyByDistance(taskfood.getDistance());
		taskfood.setMoneyPaotui(moneyPaotui);
		taskfood.setMoney(moneyFood + moneyPaotui);
		
		int r = taskfoodService.update(taskfood);
		if (r > 0) {
			taskfoodDetailService.deleteByTaskfoodId(taskfood.getId());
			for(Food food : foodList) {
				TaskfoodDetail detail = new TaskfoodDetail();
				detail.setFood(food);
				detail.setTaskfoodId(taskfood.getId());
				taskfoodDetailService.add(detail);
			}
		}
		return toAjax(r);
	}
	
	// 取消订单
	@RequestMapping("user/cancel/{id}")
	public AjaxResult cancel(@PathVariable Long id) {
		return toAjax(taskfoodService.cancel(id));
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
	
	
	/******************以下为跑腿员相关接口************************/

	// 待接单列表
	@RequestMapping("pty/todoList")
	public TableDataInfo todoList() {
		Taskfood taskfood = new Taskfood();
		taskfood.setStatus(0);
		return getDataTable(taskfoodService.list(taskfood));
	}
	
	// 我的单子列表
	@RequestMapping("pty/list")
	public TableDataInfo ptyList() {
		Long userId = getHeaderUserId();
		SysUser user = new SysUser();
		user.setUserId(userId);
		Taskfood food = new Taskfood();
		food.setPty(user);
		List<Taskfood> list = taskfoodService.list(food);
		return getDataTable(list);
	}
	
	
	// 接单
	@RequestMapping("pty/jd/{id}")
	public AjaxResult ptyJd(@PathVariable Long id) {
		Taskfood taskfood = new Taskfood();
		Long userId = getHeaderUserId();
		int rz = userService.getRz(userId);
		if (rz != 1) {
			return error("骑手身份尚未认证或未通过,不允许接单");
		}
		SysUser user = new SysUser();
		user.setUserId(userId);
		taskfood.setPty(user);
		taskfood.setId(id);
		taskfood.setJdsj(DateUtils.getTime());
		return toAjax(taskfoodService.updateJd(taskfood));
	}
	
	
	// 派送
	@RequestMapping("pty/ps/{id}")
	public AjaxResult ptyPs(@PathVariable Long id) {
		Taskfood taskfood = new Taskfood();
		taskfood.setId(id);
		return toAjax(taskfoodService.updatePs(taskfood));
	}
	
	// 完成
	@Transactional
	@RequestMapping("pty/wc/{id}")
	public AjaxResult ptyWc(@PathVariable Long id) {
		
		Taskfood newTaskfood = taskfoodService.getById(id);
		
		Long ptyId = newTaskfood.getPty().getUserId();
		Long userId= newTaskfood.getUser().getUserId();
		
		// 判断余额是否充足
		float balance = userService.getBalance(userId);
		float money = newTaskfood.getMoney();
		if (balance < money) {
			return error("用户余额不足，扣款失败，请联系用户充值后再扣款");
		}
		
		Taskfood taskfood = new Taskfood();
		taskfood.setId(id);
		taskfood.setWcsj(DateUtils.getTime());
		int r = taskfoodService.updateWc(taskfood);
		
		if (r > 0) {
			// 1 插入跑腿员的流水
			Detail detail = new Detail();
			detail.setUserId(ptyId);
			detail.setUtype("pty");
			detail.setTime(taskfood.getWcsj());
			detail.setIo("in");
			detail.setType("wm");
			detail.setOrderId(taskfood.getId());
			detail.setMoney(newTaskfood.getMoneyPaotui());
			detail.setRemark("外卖跑腿收入");
			detailService.add(detail);
			
			// 2 插入用户的流水
			Detail detail2 = new Detail();
			detail2.setUserId(userId);
			detail2.setUtype("user");
			detail2.setTime(taskfood.getWcsj());
			detail2.setIo("out");
			detail2.setType("wm");
			detail2.setOrderId(taskfood.getId());
			detail2.setMoney(newTaskfood.getMoney());
			detail2.setRemark("外卖支出");
			detailService.add(detail2);

			// 3 修改跑腿员余额，加钱
			float balance1 = userService.getBalance(ptyId);
			userService.updateBalance(ptyId, balance1 + newTaskfood.getMoneyPaotui());
			
			// 4 修改用户余额，减钱
			userService.updateBalance(userId, balance - newTaskfood.getMoney());
		}
		return toAjax(r);
	}	
}
