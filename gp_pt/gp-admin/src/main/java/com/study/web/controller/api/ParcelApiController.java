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
import com.study.task.entity.Parcel;
import com.study.task.service.DetailService;
import com.study.task.service.ParcelService;

/**
 * 帮拿快递相关接口 
 */
@RestController
@RequestMapping("openapi/parcel")
@CrossOrigin
public class ParcelApiController extends BaseController{

	@Autowired
	private ParcelService parcelService;
	@Autowired
	private SysConfigService configService;
	@Autowired
	private SysUserService userService;
	@Autowired
	private DetailService detailService;
	
	@RequestMapping("get/{id}")
	public AjaxResult get(@PathVariable Long id) {
		Parcel parcel = parcelService.getById(id);
		return AjaxResult.success(parcel);
	}
	
	/**********************以下为普通用户相关的接口*************************/
	// 我的订单列表
	@RequestMapping("user/list")
	public TableDataInfo userList() {
		Long userId = getHeaderUserId();
		SysUser user = new SysUser();
		user.setUserId(userId);
		Parcel parcel = new Parcel();
		parcel.setUser(user);
		List<Parcel> list = parcelService.list(parcel);
		return getDataTable(list);
	}
	
	// 新下单
	@RequestMapping("user/add")
	public AjaxResult userAdd(@RequestBody Parcel parcel) {
		Long userId = getHeaderUserId();
		SysUser user = new SysUser();
		user.setUserId(userId);
		parcel.setUser(user);
		// 设置单号，KD + 随机数
		parcel.setNum("kd" + RandomDataUtil.getSerNum());
		parcel.setFbsj(DateUtils.getTime());
		float weight = parcel.getWeight();
		float money = getMoneyByWeight(weight);
		// 判断余额是否充足
		float balance = userService.getBalance(userId);
		if (balance < money) {
			return error("余额不足请先充值");
		}
		parcel.setMoney(money);
		return toAjax(parcelService.add(parcel));
	}
	
	// 修改订单,未接单状态才可以
	@RequestMapping("user/update")
	public AjaxResult userUpdate(@RequestBody Parcel parcel) {
		float weight = parcel.getWeight();
		parcel.setMoney(getMoneyByWeight(weight));
		return toAjax(parcelService.update(parcel));
	}
	
	
	// 取消订单
	@RequestMapping("user/cancel")
	public AjaxResult userCancel(@RequestBody Parcel parcel) {
		return toAjax(parcelService.cancel(parcel));
	}
	
	
	/**
	 * 根据快递的重量计算价格
	 * @param weight
	 * 如果重量 < 起步重量，则价格 = 起步价
	 * 如果重量 > 起步重量，则价格 = 起步价 + 超重部分(向上取整) * 重量单价
	 * @return
	 */
	public float getMoneyByWeight(float weight) {
		float priceParcelStart = configService.getPriceParcelStart();
		float priceParcelOne = configService.getPriceParcelOne();
		float weightParcelStart = configService.getWeightParcelStart();
		if (weightParcelStart >= weight) {
			return priceParcelStart;
		} else {
			float highter = (float)Math.ceil(weight - weightParcelStart);
			return priceParcelStart + priceParcelOne + highter;
		}
	}
	
	
	
	/**********************以下为跑腿员相关的接口*************************/

	// 我的单子列表
	@RequestMapping("pty/list")
	public TableDataInfo ptyList() {
		Long userId = getHeaderUserId();
		SysUser user = new SysUser();
		user.setUserId(userId);
		Parcel parcel = new Parcel();
		parcel.setPty(user);
		List<Parcel> list = parcelService.list(parcel);
		return getDataTable(list);
	}
	

	// 待接单
	@RequestMapping("pty/todoList")
	public TableDataInfo todoList() {
		Parcel parcel = new Parcel();
		parcel.setStatus(0);
		List<Parcel> list = parcelService.list(parcel);
		return getDataTable(list);
	}
	
	
	// 接单
	@RequestMapping("pty/jd/{id}")
	public AjaxResult ptyJd(@PathVariable Long id) {
		Long userId = getHeaderUserId();
		SysUser user = new SysUser();
		int rz = userService.getRz(userId);
		if (rz != 1) {
			return error("骑手身份尚未认证或未通过,不允许接单");
		}
		user.setUserId(userId);
		Parcel parcel = new Parcel();
		parcel.setId(id);
		parcel.setPty(user);
		parcel.setJdsj(DateUtils.getTime());
		return toAjax(parcelService.updateJd(parcel));
	}
	
	// 状态改为配送
	@RequestMapping("pty/ps/{id}")
	public AjaxResult ptyPs(@PathVariable Long id) {
		Parcel parcel = new Parcel();
		parcel.setId(id);
		return toAjax(parcelService.updatePs(parcel));
	}
	
	// 状态改为完成, 同时插入流水表及修改两个人的余额
	@Transactional
	@RequestMapping("pty/wc/{id}")
	public AjaxResult ptyWc(@PathVariable Long id) {
		Parcel newParcel = parcelService.getById(id);
		
		Long ptyId = newParcel.getPty().getUserId();
		Long userId= newParcel.getUser().getUserId();
		
		// 判断余额是否充足
		float balance = userService.getBalance(userId);
		float money = newParcel.getMoney();
		if (balance < money) {
			return error("用户余额不足，扣款失败，请联系用户充值后再扣款");
		}
		Parcel parcel = new Parcel();
		parcel.setId(id);
		int r = parcelService.updateWc(parcel);
		
		if (r > 0) {
			// 1 插入跑腿员的流水
			Detail detail = new Detail();
			detail.setUserId(ptyId);
			detail.setUtype("pty");
			detail.setTime(parcel.getWcsj());
			detail.setIo("in");
			detail.setType("kd");
			detail.setOrderId(newParcel.getId());
			detail.setMoney(newParcel.getMoney());
			detail.setRemark("跑腿收入");
			detailService.add(detail);
			
			// 2 插入用户的流水
			Detail detail2 = new Detail();
			detail2.setUserId(userId);
			detail2.setUtype("user");
			detail2.setTime(parcel.getWcsj());
			detail2.setIo("out");
			detail2.setType("kd");
			detail2.setOrderId(newParcel.getId());
			detail2.setMoney(newParcel.getMoney());
			detail2.setRemark("跑腿支出");
			detailService.add(detail2);

			// 3 修改跑腿员余额，加钱
			float balance1 = userService.getBalance(ptyId);
			userService.updateBalance(ptyId, balance1 + newParcel.getMoney());
			
			// 4 修改用户余额，减钱
			userService.updateBalance(userId, balance - newParcel.getMoney());
		}
		return toAjax(r);
	}
	
	
	
	
}
