package com.study.common.core.base;

import java.beans.PropertyEditorSupport;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.study.common.core.domain.AjaxResult;
import com.study.common.core.domain.AjaxResult.Type;
import com.study.common.core.page.PageDomain;
import com.study.common.core.page.TableDataInfo;
import com.study.common.core.page.TableSupport;
import com.study.common.core.text.Convert;
import com.study.common.util.DateUtils;
import com.study.common.util.PermissionUtils;
import com.study.common.util.ServletUtils;
import com.study.common.util.StringUtils;

public class BaseController {
	
	/**
	 * 获取当前用户ID,从requestHeader获取，手机端用
	 * @return
	 */
	protected Long getHeaderUserId() {
		return Convert.toLong(getRequest().getHeader("userId"));
	}

	/**
	 * 获取当前用户ID,从shiro获取，后台用
	 * 
	 * @return
	 */
	protected Long getUserId() {
		return (Long) PermissionUtils.getPrincipalProperty("userId");
	}

	/**
	 * 获取当前用户登录名
	 * 
	 * @return
	 */
	protected String getLoginName() {
		return PermissionUtils.getLoginName();
	}
	
	
	protected Long getDeptId() {
		return PermissionUtils.getDeptId();
	}
	

	/**
	 * 获取当前用户姓名
	 * 
	 * @return
	 */
	protected String getUserName() {
		return PermissionUtils.getUserName();
	}

	/**
	 * 获取当前手机号
	 * 
	 * @return
	 */
	protected String getPhonenumber() {
		return PermissionUtils.getPhonenumber();
	}

	/**
	 * 获取当前身份证
	 * 
	 * @return
	 */
	protected String getIdcardno() {
		return PermissionUtils.getIdcardno();
	}

	/**
	 * 获取当前学工号
	 * 
	 * @return
	 */
	protected String getUsercord() {
		return PermissionUtils.getUserCode();
	}

	/**
	 * 将前台传递过来的日期格式的字符串，自动转化为Date类型
	 */
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		// Date 类型转换
		binder.registerCustomEditor(Date.class, new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) {
				setValue(DateUtils.parseDate(text));
			}
		});
	}

	/**
	 * 设置请求分页数据 将排序写在xml代码中
	 */
	protected void startPage() {
		PageDomain pageDomain = TableSupport.buildPageRequest();
		Integer pageNum = pageDomain.getPageNum();
		Integer pageSize = pageDomain.getPageSize();
		if (StringUtils.isNotNull(pageNum) && StringUtils.isNotNull(pageSize)) {
			PageHelper.startPage(pageNum, pageSize);
		}
	}

	/**
	 * 设置分页
	 * 
	 * @param pageNo   当前页
	 * @param pageSize 每页大小
	 */
	protected void startPage(int pageNo, int pageSize) {
		PageHelper.startPage(pageNo, pageSize);
	}

	/**
	 * 获取request
	 */
	public HttpServletRequest getRequest() {
		return ServletUtils.getRequest();
	}

	/**
	 * 获取response
	 */
	public HttpServletResponse getResponse() {
		return ServletUtils.getResponse();
	}

	/**
	 * 获取session
	 */
	public HttpSession getSession() {
		return getRequest().getSession();
	}

	/**
	 * 响应请求分页数据
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	protected TableDataInfo getDataTable(List<?> list) {
		TableDataInfo rspData = new TableDataInfo();
		rspData.setCode(0);
		rspData.setRows(list);
		rspData.setTotal(new PageInfo(list).getTotal());
		return rspData;
	}

	protected TableDataInfo getDataTable(List<?> list, long toatl) {
		TableDataInfo rspData = new TableDataInfo();
		rspData.setCode(0);
		rspData.setRows(list);
		rspData.setTotal(toatl);
		return rspData;
	}

	/**
	 * 响应返回结果
	 * 
	 * @param rows 影响行数
	 * @return 操作结果
	 */
	protected AjaxResult toAjax(int rows) {
		return rows > 0 ? success() : error();
	}

	/**
	 * 响应返回结果
	 * 
	 * @param result 结果
	 * @return 操作结果
	 */
	protected AjaxResult toAjax(boolean result) {
		return result ? success() : error();
	}

	/**
	 * 返回成功
	 */
	public AjaxResult success() {
		return AjaxResult.success();
	}

	/**
	 * 返回失败消息
	 */
	public AjaxResult error() {
		return AjaxResult.error();
	}

	/**
	 * 返回成功消息
	 */
	public AjaxResult success(String message) {
		return AjaxResult.success(message);
	}

	/**
	 * 返回失败消息
	 */
	public AjaxResult error(String message) {
		return AjaxResult.error(message);
	}

	/**
	 * 返回错误码消息
	 */
	public AjaxResult error(Type type, String message) {
		return new AjaxResult(type, message);
	}

	/**
	 * 页面跳转
	 */
	public String redirect(String url) {
		return StringUtils.format("redirect:{}", url);
	}

}
