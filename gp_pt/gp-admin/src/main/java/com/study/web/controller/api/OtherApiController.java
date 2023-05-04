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
import com.study.task.entity.Taskother;
import com.study.task.service.DetailService;
import com.study.task.service.TaskotherService;

/**
 * 其他跑腿相关接口 
 */
@RestController
@RequestMapping("openapi/other")
@CrossOrigin
public class OtherApiController extends BaseController{

	@Autowired
	private TaskotherService taskotherService;
	@Autowired
	private SysUserService userService;
	@Autowired
	private DetailService detailService;
	@Autowired
	private SysConfigService configService;
	
	
	@RequestMapping("get/{id}")
	public AjaxResult get(@PathVariable Long id) {
		Taskother taskother = taskotherService.getById(id);
		return AjaxResult.success(taskother);
	}
	
	/******************以下为用户相关接口************************/
	
	// 用户的所有订单
	@RequestMapping("user/list")
	public TableDataInfo userList() {
		Long userId = getHeaderUserId();
		SysUser user = new SysUser();
		user.setUserId(userId);
		Taskother taskother = new Taskother();
		taskother.setUser(user);
		List<Taskother> list = taskotherService.list(taskother);
		return getDataTable(list);
	}
	
	// 用户新下单
	@RequestMapping("user/add")
	public AjaxResult userAdd(@RequestBody Taskother taskother) {
		Long userId = getHeaderUserId();
		SysUser user = new SysUser();
		user.setUserId(userId);
		taskother.setUser(user);
		taskother.setFbsj(DateUtils.getTime());
		// 设置单号，WM + 随机数
		taskother.setNum("qt" + RandomDataUtil.getSerNum());
		float moneyPaotui = getMoneyByDistance(taskother.getDistance());
		taskother.setMoneyPaotui(moneyPaotui);
		taskother.setMoney(moneyPaotui);
		int r = taskotherService.add(taskother);
		return toAjax(r);
	}
	
	// 用户修改
	@RequestMapping("user/update")
	public AjaxResult userUpdate(@RequestBody Taskother taskother) {
		float moneyPaotui = getMoneyByDistance(taskother.getDistance());
		taskother.setMoneyPaotui(moneyPaotui);
		taskother.setMoney(moneyPaotui);
		
		int r = taskotherService.update(taskother);
		return toAjax(r);
	}
	
	// 取消订单
	@RequestMapping("user/cancel/{id}")
	public AjaxResult cancel(@PathVariable Long id) {
		return toAjax(taskotherService.cancel(id));
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
	
	// 待接单
	@RequestMapping("pty/todoList")
	public TableDataInfo todoList() {
		Taskother taskother = new Taskother();
		taskother.setStatus(0);
		List<Taskother> list = taskotherService.list(taskother);
		return getDataTable(list);
	}
	
	// 我的单子列表
	@RequestMapping("pty/list")
	public TableDataInfo ptyList() {
		Long userId = getHeaderUserId();
		SysUser user = new SysUser();
		user.setUserId(userId);
		Taskother other = new Taskother();
		other.setPty(user);
		List<Taskother> list = taskotherService.list(other);
		return getDataTable(list);
	}
	
	// 接单
	@RequestMapping("pty/jd/{id}")
	public AjaxResult ptyJd(@PathVariable Long id) {
		Taskother taskother = new Taskother();
		Long userId = getHeaderUserId();
		int rz = userService.getRz(userId);
		if (rz != 1) {
			return error("骑手身份尚未认证或未通过,不允许接单");
		}
		SysUser user = new SysUser();
		user.setUserId(userId);
		taskother.setPty(user);
		taskother.setId(id);
		taskother.setJdsj(DateUtils.getTime());
		return toAjax(taskotherService.updateJd(taskother));
	}
	
	
	// 派送
	@RequestMapping("pty/ps/{id}")
	public AjaxResult ptyPs(@PathVariable Long id) {
		Taskother taskother = new Taskother();
		taskother.setId(id);
		return toAjax(taskotherService.updatePs(taskother));
	}
	
	// 完成
	@Transactional
	@RequestMapping("pty/wc/{id}")
	public AjaxResult ptyWc(@PathVariable Long id) {
		
		Taskother newTaskother = taskotherService.getById(id);
		
		Long ptyId = newTaskother.getPty().getUserId();
		Long userId= newTaskother.getUser().getUserId();
		
		// 判断余额是否充足
		float balance = userService.getBalance(userId);
		float money = newTaskother.getMoney();
		if (balance < money) {
			return error("用户余额不足，扣款失败，请联系用户充值后再扣款");
		}
		
		Taskother taskother = new Taskother();
		taskother.setId(id);
		taskother.setWcsj(DateUtils.getTime());
		int r = taskotherService.updateWc(taskother);
		
		if (r > 0) {
			// 1 插入跑腿员的流水
			Detail detail = new Detail();
			detail.setUserId(ptyId);
			detail.setUtype("pty");
			detail.setTime(taskother.getWcsj());
			detail.setIo("in");
			detail.setType("qt");
			detail.setOrderId(newTaskother.getId());
			detail.setMoney(newTaskother.getMoneyPaotui());
			detail.setRemark("其他跑腿收入");
			detailService.add(detail);
			
			// 2 插入用户的流水
			Detail detail2 = new Detail();
			detail2.setUserId(userId);
			detail2.setUtype("user");
			detail2.setTime(taskother.getWcsj());
			detail2.setIo("out");
			detail2.setType("qt");
			detail2.setOrderId(newTaskother.getId());
			detail2.setMoney(newTaskother.getMoney());
			detail2.setRemark("其他跑腿支出");
			detailService.add(detail2);

			// 3 修改跑腿员余额，加钱
			float balance1 = userService.getBalance(ptyId);
			userService.updateBalance(ptyId, balance1 + newTaskother.getMoneyPaotui());
			
			// 4 修改用户余额，减钱
			userService.updateBalance(userId, balance - newTaskother.getMoney());
		}
		return toAjax(r);
	}	
}
