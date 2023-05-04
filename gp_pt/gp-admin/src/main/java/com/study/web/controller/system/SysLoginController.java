package com.study.web.controller.system;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.study.common.core.base.BaseController;
import com.study.common.core.domain.AjaxResult;
import com.study.common.util.AESUtil;
import com.study.common.util.ServletUtils;
import com.study.common.util.StringUtils;
import com.study.framework.shiro.service.SysPasswordService;
import com.study.framework.util.ShiroUtils;
import com.study.system.dao.SysUserRoleDao;
import com.study.system.entity.SysUser;
import com.study.system.entity.SysUserRole;
import com.study.system.service.SysUserService;

/**
 * @description PC端登录
 */
@Controller
public class SysLoginController extends BaseController {


	@Autowired
	private SysPasswordService passwordService;
	@Autowired
	private SysUserService userService;
	@Autowired
	private SysUserRoleDao userRoleDao;

	@GetMapping("/login")
	public String login(HttpServletRequest request, HttpServletResponse response) {
		// 如果是Ajax请求，返回Json字符串。
		if (ServletUtils.isAjaxRequest(request)) {
			return ServletUtils.renderString(response, "{\"code\":\"1\",\"msg\":\"未登录或登录超时。请重新登录\"}");
		}
		return "login";
	}
	
	@GetMapping("toregister")
	public String toregister() {
		return "register";
	}
	
	@RequestMapping("register")
	@ResponseBody
	public AjaxResult register(SysUser user) {
		user.setSalt(ShiroUtils.randomSalt());
		user.setPassword(passwordService.encryptPassword(user.getLoginName(), user.getPassword(), user.getSalt()));
		user.setOldpwd(AESUtil.encrypt(user.getPassword()));
		user.setDeptId(213L);
		user.setUserType(1);
		user.setStatus("0");
		int r = userService.add(user);
		
		SysUserRole ur = new SysUserRole();
		ur.setUserId(user.getUserId());
		ur.setRoleId(116L);
		r += userRoleDao.add(ur);
		return toAjax(r);
	}
	

	@PostMapping("/login")
	@ResponseBody
	public AjaxResult ajaxLogin(String username, String password, Boolean rememberMe) {
		UsernamePasswordToken token = new UsernamePasswordToken(username, password, rememberMe);
		Subject subject = SecurityUtils.getSubject();
		try {
			subject.login(token);
			return success();
		} catch (AuthenticationException e) {
			e.printStackTrace();
			String msg = "用户或密码错误";
			if (StringUtils.isNotEmpty(e.getMessage())) {
				msg = e.getMessage();
			}
			return error(msg);
		}
	}

	@GetMapping("/unauth")
	public String unauth() {
		return "error/unauth";
	}
}
