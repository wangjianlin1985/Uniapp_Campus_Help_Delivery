package com.study.framework.shiro.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import com.study.common.constant.Constants;
import com.study.common.constant.ShiroConstants;
import com.study.common.constant.UserConstants;
import com.study.common.enums.CommonStatus;
import com.study.common.exception.user.CaptchaException;
import com.study.common.exception.user.UserBlockedException;
import com.study.common.exception.user.UserDeleteException;
import com.study.common.exception.user.UserNotExistsException;
import com.study.common.exception.user.UserPasswordNotMatchException;
import com.study.common.util.DateUtils;
import com.study.common.util.MessageUtils;
import com.study.common.util.ServletUtils;
import com.study.framework.manager.AsyncManager;
import com.study.framework.manager.factory.AsyncFactory;
import com.study.framework.util.ShiroUtils;
import com.study.system.entity.SysUser;
import com.study.system.service.SysUserService;

/**
 * 用户登录（shiro）
 */
@Component
public class SysLoginService {
	@Autowired
	private SysPasswordService passwordService;

	@Autowired
	private SysUserService userService;

	/**
	 * 登录
	 */
	public SysUser login(String username, String password) {
		// 验证码校验
		if (!StringUtils.isEmpty(ServletUtils.getRequest().getAttribute(ShiroConstants.CURRENT_CAPTCHA))) {
			AsyncManager.me().execute(AsyncFactory.recordLogininfor(username, Constants.LOGIN_FAIL,
					MessageUtils.message("user.jcaptcha.error")));
			throw new CaptchaException();
		}
		// 用户名或密码为空 错误
		if (StringUtils.isEmpty(username) || StringUtils.isEmpty(password)) {
			AsyncManager.me().execute(
					AsyncFactory.recordLogininfor(username, Constants.LOGIN_FAIL, MessageUtils.message("not.null")));
			throw new UserNotExistsException();
		}
		// 密码如果不在指定范围内 错误
		if (password.length() < UserConstants.PASSWORD_MIN_LENGTH
				|| password.length() > UserConstants.PASSWORD_MAX_LENGTH) {
			AsyncManager.me().execute(AsyncFactory.recordLogininfor(username, Constants.LOGIN_FAIL,
					MessageUtils.message("user.password.not.match")));
			throw new UserPasswordNotMatchException();
		}

		// 用户名不在指定范围内 错误
		if (username.length() < UserConstants.USERNAME_MIN_LENGTH
				|| username.length() > UserConstants.USERNAME_MAX_LENGTH) {
			AsyncManager.me().execute(AsyncFactory.recordLogininfor(username, Constants.LOGIN_FAIL,
					MessageUtils.message("user.password.not.match")));
			throw new UserPasswordNotMatchException();
		}

		// 查询用户信息
		SysUser searchUser = new SysUser();
		searchUser.setLoginName(username);
		SysUser user = userService.selectUserByLoginName(searchUser);
		if (user == null) {
			AsyncManager.me().execute(AsyncFactory.recordLogininfor(username, Constants.LOGIN_FAIL,
					MessageUtils.message("user.not.exists")));
			throw new UserNotExistsException();
		}
		
		if (CommonStatus.DELETED.getCode().equals(user.getDeleteFlag())) {
			AsyncManager.me().execute(AsyncFactory.recordLogininfor(username, Constants.LOGIN_FAIL,
					MessageUtils.message("user.password.delete")));
			throw new UserDeleteException();
		}

		if (CommonStatus.DISABLE.getCode().toString().equals(user.getStatus())) {
			AsyncManager.me().execute(AsyncFactory.recordLogininfor(username, Constants.LOGIN_FAIL,
					MessageUtils.message("user.blocked", user.getRemark())));
			throw new UserBlockedException();
		}

		passwordService.validate(user, password);

		AsyncManager.me().execute(AsyncFactory.recordLogininfor(username, Constants.LOGIN_SUCCESS,
				MessageUtils.message("user.login.success")));
		recordLoginInfo(user);
		return user;
	}

	/**
	 * 记录登录信息
	 */
	public void recordLoginInfo(SysUser user) {
		user.setLoginIp(ShiroUtils.getIp());
		user.setLoginDate(DateUtils.getNowDate());
		userService.updateUserInfo(user);
	}
}
