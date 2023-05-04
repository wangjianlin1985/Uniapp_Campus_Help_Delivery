package com.study.web.controller.api;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.study.common.config.Global;
import com.study.common.core.base.BaseController;
import com.study.common.core.domain.AjaxResult;
import com.study.common.core.page.TableDataInfo;
import com.study.common.core.text.Convert;
import com.study.common.util.AESUtil;
import com.study.common.util.DateUtils;
import com.study.common.util.file.FileUploadUtils;
import com.study.framework.shiro.service.SysPasswordService;
import com.study.framework.util.ShiroUtils;
import com.study.system.dao.SysUserRoleDao;
import com.study.system.entity.SysUser;
import com.study.system.entity.SysUserRole;
import com.study.system.service.SysUserService;
import com.study.task.entity.Detail;
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

/**
 * 登录，注册，个人中心等相关接口 
 */
@RestController
@RequestMapping("openapi/system")
@CrossOrigin
public class SysApiController extends BaseController{

	@Autowired
	private SysUserService userService;
	@Autowired
	private SysPasswordService passwordService;
	@Autowired
	private SysUserRoleDao userRoleDao;
	@Autowired
	private DetailService detailService;
	@Autowired
	private TaskgoodsService taskgoodsService;
	@Autowired
	private TaskfoodService taskfoodService;
	@Autowired
	private TaskprintService taskprintService;
	@Autowired
	private TaskotherService taskotherService;
	@Autowired
	private ParcelService parcelService;
	
	
	// 登录
	@RequestMapping("loginNocode")
	public AjaxResult loginNocode(@RequestBody Map<String, Object> map) {
		String loginName = Convert.toStr(map.get("username"));
		String password = Convert.toStr(map.get("password"));
		Long roleId = Convert.toLong(map.get("roleId"));
		SysUser user = new SysUser();
		user.setLoginName(loginName);
		SysUser result = userService.selectUserByLoginName(user);
		if (result == null) {
			return error("用户名或密码错误");
		}
		String encrPwd = passwordService.encryptPassword(result.getLoginName(), password, result.getSalt());
		if (!encrPwd.equals(result.getPassword())) {
			return error("用户名或密码错误");
		}
		if (result.getRoles() == null || result.getRoles().size() == 0) {
			return error("用户名或密码错误");
		}
		Long r = result.getRoles().get(0).getRoleId();
		if (!roleId.equals(r)) {
			return error("用户名或密码错误");
		}
		if ("1".equals(user.getStatus())) {
			return error("账号被禁用");
		}
		return AjaxResult.success(result);
	}
	
	// 注册
	@RequestMapping("register")
	@Transactional
	public AjaxResult register(@RequestBody SysUser user) {
		user.setSalt(ShiroUtils.randomSalt());
		user.setPassword(passwordService.encryptPassword(user.getLoginName(), user.getPassword(), user.getSalt()));
		user.setOldpwd(AESUtil.encrypt(user.getPassword()));
		user.setDeptId(213L);
		if (user.getRoleId() == 116) {
			user.setUserType(1); // 用户
		} else {
			user.setUserType(2); // 骑手
		}
		user.setStatus("0");
		int r = userService.add(user);
		
		SysUserRole ur = new SysUserRole();
		ur.setUserId(user.getUserId());
		ur.setRoleId(user.getRoleId());
		r += userRoleDao.add(ur);
		return toAjax(r);
	}
	
	// 个人信息查询
	@RequestMapping("userinfo")
	public AjaxResult userinfo() {
		SysUser user = userService.getById(getHeaderUserId());
		return AjaxResult.success(user);
	}
	
	// 更新手机号
	@RequestMapping("updatePhonenumber")
	public AjaxResult updatePhonenumber(@RequestBody SysUser user) {
		user.setUserId(getHeaderUserId());
		return toAjax(userService.updatePhonenumber(user));
	}
	
	// 更新email
	@RequestMapping("updateEmail")
	public AjaxResult updateEmail(@RequestBody SysUser user) {
		user.setUserId(getHeaderUserId());
		return toAjax(userService.updateEmail(user));
	}
	
	// 更新姓名
	@RequestMapping("updateUserName")
	public AjaxResult updateUserName(@RequestBody SysUser user) {
		user.setUserId(getHeaderUserId());
		return toAjax(userService.updateUserName(user));
	}
	
	// 修改密码
	@RequestMapping("updatePwd")
	public AjaxResult updatePwd(@RequestBody Map<String, Object> map) {
		String oldPassword = cn.hutool.core.convert.Convert.toStr(map.get("oldPassword"));
		String newPassword = cn.hutool.core.convert.Convert.toStr(map.get("newPassword"));
		Long userId = getHeaderUserId();
		SysUser result = userService.getById(userId);
		String encrPwd = passwordService.encryptPassword(result.getLoginName(), oldPassword, result.getSalt());
		if (!encrPwd.equals(result.getPassword())) {
			return error("旧密码错误");
		}
		SysUser user = new SysUser();
		user.setUserId(result.getUserId());
		user.setPassword(passwordService.encryptPassword(result.getLoginName(), newPassword, result.getSalt()));
		return toAjax(userService.resetUserPwd(user));
	}
	
	// 上传头像
	@PostMapping("updateAvatar")
	public AjaxResult updateAvatar(@RequestParam("file") MultipartFile file) {
		try {
			if (!file.isEmpty()) {
				String avatar = FileUploadUtils.upload(Global.getAvatarPath(), file);
				SysUser user = new SysUser();
				user.setAvatar(avatar);
				user.setUserId(getHeaderUserId());
				if (userService.updateUserInfo(user) > 0) {
					Map<String, Object> map = new HashMap<>();
					map.put("avatar", avatar);
					return AjaxResult.success(map);
				}
			}
			return error();
		} catch (Exception e) {
			return error(e.getMessage());
		}
	}
	
	// 获取余额
	@RequestMapping("balance")
	public AjaxResult balance() {
		float balance = userService.getBalance(getHeaderUserId());
		Map<String, Object> map = new HashMap<>();
		map.put("balance", balance);
		map.put("rz", userService.getRz(getHeaderUserId())); // 认证状态，懒的重新写接口了，就在这了
		return AjaxResult.success(map);
	}
	
	
	// 充值
	@RequestMapping("chongzhi")
	@Transactional
	public AjaxResult chongzhi(@RequestBody Map<String, Object> map) {
		Long userId = getHeaderUserId();
		float money = Convert.toFloat(map.get("money"));
		float balance = userService.getBalance(userId);
		int r = userService.updateBalance(userId, balance+money);
		if (r > 0) {
			Detail detail = new Detail();
			detail.setUserId(userId);
			detail.setUtype("user");
			detail.setTime(DateUtils.getTime());
			detail.setIo("in");
			detail.setType("cz");
			detail.setMoney(money);
			detail.setRemark("充值");
			detailService.add(detail);
		}
		return toAjax(r);
	}
	
	
	// 取现
	@RequestMapping("quxian")
	@Transactional
	public AjaxResult quxian(@RequestBody Map<String, Object> map) {
		Long userId = getHeaderUserId();
		float money = Convert.toFloat(map.get("money"));
		float balance = userService.getBalance(userId);
		int r = userService.updateBalance(userId, balance-money);
		if (r > 0) {
			Detail detail = new Detail();
			detail.setUserId(userId);
			detail.setUtype("pty");
			detail.setTime(DateUtils.getTime());
			detail.setIo("out");
			detail.setType("qx");
			detail.setMoney(money);
			detail.setRemark("取现");
			detailService.add(detail);
		}
		return toAjax(r);
	}
	
	
	
	@RequestMapping("taskList")
	public TableDataInfo taskList() {
		List<Map<String, Object>> list = new ArrayList<>();
		
		// 外卖
		Taskfood taskfood = new Taskfood();
		taskfood.setStatus(0);
		startPage(1, 2);
		List<Taskfood> taskfoodList = taskfoodService.list(taskfood);
		taskfoodList.forEach(tf -> {
			Map<String, Object> map = new HashMap<>();
			map.put("id", tf.getId());
			map.put("name", tf.getUser().getUserName());
			map.put("avatar", tf.getUser().getAvatar());
			map.put("type", "wm");
			map.put("moneyPaotui", tf.getMoneyPaotui());
			map.put("distance", tf.getDistance());
			map.put("fbsj", tf.getFbsj());
			list.add(map);
		});
		
		
		// 购物
		Taskgoods taskgoods = new Taskgoods();
		taskgoods.setStatus(0);
		startPage(1, 2);
		List<Taskgoods> taskgoodsList = taskgoodsService.list(taskgoods);
		taskgoodsList.forEach(tf -> {
			Map<String, Object> map = new HashMap<>();
			map.put("id", tf.getId());
			map.put("name", tf.getUser().getUserName());
			map.put("avatar", tf.getUser().getAvatar());
			map.put("type", "gw");
			map.put("moneyPaotui", tf.getMoneyPaotui());
			map.put("distance", tf.getDistance());
			map.put("fbsj", tf.getFbsj());
			list.add(map);
		});
		
		
		// 快递
		Parcel parcel = new Parcel();
		parcel.setStatus(0);
		startPage(1, 2);
		List<Parcel> parcelList = parcelService.list(parcel);
		parcelList.forEach(tf -> {
			Map<String, Object> map = new HashMap<>();
			map.put("id", tf.getId());
			map.put("name", tf.getUser().getUserName());
			map.put("avatar", tf.getUser().getAvatar());
			map.put("type", "kd");
			map.put("moneyPaotui", tf.getMoney());
			map.put("distance", tf.getWeight()); // 这里是重量
			map.put("fbsj", tf.getFbsj());
			list.add(map);
		});

		
		// 打印
		Taskprint taskprint = new Taskprint();
		taskprint.setStatus(0);
		startPage(1, 2);
		List<Taskprint> taskprintList = taskprintService.list(taskprint);
		taskprintList.forEach(tf -> {
			Map<String, Object> map = new HashMap<>();
			map.put("id", tf.getId());
			map.put("name", tf.getUser().getUserName());
			map.put("avatar", tf.getUser().getAvatar());
			map.put("type", "dy");
			map.put("moneyPaotui", tf.getMoneyPaotui());
			map.put("distance", tf.getDistance());
			map.put("fbsj", tf.getFbsj());
			list.add(map);
		});
		
		
		// 打印
		Taskother taskother = new Taskother();
		taskother.setStatus(0);
		startPage(1, 2);
		List<Taskother> taskotherList = taskotherService.list(taskother);
		taskotherList.forEach(tf -> {
			Map<String, Object> map = new HashMap<>();
			map.put("id", tf.getId());
			map.put("name", tf.getUser().getUserName());
			map.put("avatar", tf.getUser().getAvatar());
			map.put("type", "qt");
			map.put("moneyPaotui", tf.getMoneyPaotui());
			map.put("distance", tf.getDistance());
			map.put("fbsj", tf.getFbsj());
			list.add(map);
		});
		
		return getDataTable(list);
	}
	
	
	
	
	
	@RequestMapping("myList")
	public TableDataInfo myList() {
		List<Map<String, Object>> list = new ArrayList<>();
		Long userId = getHeaderUserId();
		SysUser user = new SysUser();
		user.setUserId(userId);
		
		// 外卖
		Taskfood taskfood = new Taskfood();
		taskfood.setUnwc("1");
		taskfood.setUser(user);
		List<Taskfood> taskfoodList = taskfoodService.list(taskfood);
		taskfoodList.forEach(tf -> {
			Map<String, Object> map = new HashMap<>();
			map.put("id", tf.getId());
			if (tf.getPty() != null) {
				map.put("name", tf.getPty().getUserName());
				map.put("avatar", tf.getPty().getAvatar());
			}
			map.put("type", "wm");
			map.put("money", tf.getMoney());
			map.put("status", tf.getStatus());
			map.put("distance", tf.getDistance());
			map.put("fbsj", tf.getFbsj());
			list.add(map);
		});
		
		
		// 购物
		Taskgoods taskgoods = new Taskgoods();
		taskgoods.setUser(user);
		taskgoods.setUnwc("1");
		List<Taskgoods> taskgoodsList = taskgoodsService.list(taskgoods);
		taskgoodsList.forEach(tf -> {
			Map<String, Object> map = new HashMap<>();
			map.put("id", tf.getId());
			if (tf.getPty() != null) {
				map.put("name", tf.getPty().getUserName());
				map.put("avatar", tf.getPty().getAvatar());
			}
			map.put("type", "gw");
			map.put("money", tf.getMoney());
			map.put("status", tf.getStatus());
			map.put("distance", tf.getDistance());
			map.put("fbsj", tf.getFbsj());
			list.add(map);
		});
		
		
		// 快递
		Parcel parcel = new Parcel();
		parcel.setUnwc("1");
		parcel.setUser(user);
		List<Parcel> parcelList = parcelService.list(parcel);
		parcelList.forEach(tf -> {
			Map<String, Object> map = new HashMap<>();
			map.put("id", tf.getId());
			if (tf.getPty() != null) {
				map.put("name", tf.getPty().getUserName());
				map.put("avatar", tf.getPty().getAvatar());
			}
			map.put("type", "kd");
			map.put("money", tf.getMoney());
			map.put("status", tf.getStatus());
			map.put("distance", tf.getWeight()); // 这里是重量
			map.put("fbsj", tf.getFbsj());
			list.add(map);
		});

		
		// 打印
		Taskprint taskprint = new Taskprint();
		taskprint.setUser(user);
		taskprint.setUnwc("1");
		List<Taskprint> taskprintList = taskprintService.list(taskprint);
		taskprintList.forEach(tf -> {
			Map<String, Object> map = new HashMap<>();
			map.put("id", tf.getId());
			if (tf.getPty() != null) {
				map.put("name", tf.getPty().getUserName());
				map.put("avatar", tf.getPty().getAvatar());
			}
			map.put("type", "dy");
			map.put("money", tf.getMoney());
			map.put("status", tf.getStatus());
			map.put("distance", tf.getDistance());
			map.put("fbsj", tf.getFbsj());
			list.add(map);
		});
		
		
		// 打印
		Taskother taskother = new Taskother();
		taskother.setUnwc("1");
		taskother.setUser(user);
		List<Taskother> taskotherList = taskotherService.list(taskother);
		taskotherList.forEach(tf -> {
			Map<String, Object> map = new HashMap<>();
			map.put("id", tf.getId());
			if (tf.getPty() != null) {
				map.put("name", tf.getPty().getUserName());
				map.put("avatar", tf.getPty().getAvatar());
			}
			map.put("type", "qt");
			map.put("money", tf.getMoney());
			map.put("status", tf.getStatus());
			map.put("distance", tf.getDistance());
			map.put("fbsj", tf.getFbsj());
			list.add(map);
		});
		
		return getDataTable(list);
	}
	
	
}
