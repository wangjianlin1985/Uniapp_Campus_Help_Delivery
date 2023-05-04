package com.study.framework.web.exception;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.authz.AuthorizationException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.validation.BindException;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.ModelAndView;

import com.study.common.core.domain.AjaxResult;
import com.study.common.exception.BusinessException;
import com.study.common.util.PermissionUtils;
import com.study.common.util.ServletUtils;

/**
 * 全局异常handler
 */
@RestControllerAdvice
public class GlobalExceptionHandler {
	private static final Logger log = LoggerFactory.getLogger(GlobalExceptionHandler.class);

	/**
	 * 权限校验失败 如果请求为ajax返回json，普通请求跳转页面
	 */
	@ExceptionHandler(AuthorizationException.class)
	public Object handleAuthorizationException(HttpServletRequest request, AuthorizationException e) {
		log.error(e.getMessage(), e);
		if (ServletUtils.isAjaxRequest(request)) {
			return AjaxResult.error(PermissionUtils.getMsg(e.getMessage()));
		} else {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("error/unauth");
			return modelAndView;
		}
	}

	/**
	 * 请求方式不支持
	 */
	@ExceptionHandler({ HttpRequestMethodNotSupportedException.class })
	public AjaxResult handleException(HttpRequestMethodNotSupportedException e) {
		log.error(e.getMessage(), e);
		return AjaxResult.error("不支持' " + e.getMethod() + "'请求");
	}

	/**
	 * 拦截未知的运行时异常
	 */
	@ExceptionHandler(RuntimeException.class)
	public AjaxResult notFount(RuntimeException e) {
		log.error("运行时异常:", e);
		return AjaxResult.error("运行时异常:" + e.getMessage());
	}

	/**
	 * 系统异常
	 */
	@ExceptionHandler(Exception.class)
	public AjaxResult handleException(Exception e) {
		log.error(e.getMessage(), e);
		return AjaxResult.error("服务器错误，请联系管理员");
	}

	/**
	 * 业务异常
	 */
	@ExceptionHandler(BusinessException.class)
	public Object businessException(HttpServletRequest request, BusinessException e) {
		log.error(e.getMessage(), e);
		if (ServletUtils.isAjaxRequest(request)) {
			return AjaxResult.error(e.getMessage());
		} else {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("errorMessage", e.getMessage());
			modelAndView.setViewName("error/business");
			return modelAndView;
		}
	}

	/**
	 * 自定义验证异常 拦截form表单请求会出现BindException
	 */
	@ExceptionHandler({ BindException.class })
	public AjaxResult validatedBindException(BindException e) {
		log.error(e.getMessage(), e);
		String message = e.getAllErrors().get(0).getDefaultMessage();
		return AjaxResult.error(message);
	}

	/**
	 * 自定义验证异常 拦截raw json格式请求会出现MethodArgumentNotValidException
	 */
	@ExceptionHandler({ MethodArgumentNotValidException.class })
	public AjaxResult validException(MethodArgumentNotValidException e) {
		log.error(e.getMessage(), e);
		String message = e.getBindingResult().getAllErrors().get(0).getDefaultMessage();
		return AjaxResult.error(message);
	}
}
