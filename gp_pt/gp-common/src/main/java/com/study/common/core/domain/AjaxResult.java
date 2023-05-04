package com.study.common.core.domain;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.study.common.util.StringUtils;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class AjaxResult extends HashMap<String, Object> {
	
	private static final long serialVersionUID = 1L;

	public static final String CODE_TAG = "code";

	public static final String MSG_TAG = "msg";

	public static final String DATA_TAG = "data";
	
	public static final String TOTAL_SIZE = "total";
	
	public static final String PAGE_SIEZ = "pageSize";

	public static final String PAGE_NO = "pageNo";
	
	public static final String ROWS = "rows";
	
	/**
	 * 状态类型
	 */
	public enum Type {
		/** 成功 */
		SUCCESS(0),
		/** 警告 */
		WARN(301),
		/** 错误 */
		ERROR(500);
		
		private final int value;

		Type(int value) {
			this.value = value;
		}

		public int value() {
			return this.value;
		}
	}

	/** 状态类型 */
	private Type type;

	/** 状态码 */
	private int code;

	/** 返回内容 */
	private String msg;

	/** 数据对象 */
	private Object data;

	/**
	 * 初始化一个新创建的 AjaxResult 对象，使其表示一个空消息。
	 */
	public AjaxResult() {
	}

	public AjaxResult(int code,String msg) {
		super.put(CODE_TAG, code);
		super.put(MSG_TAG, msg);
	}
	
	/**
	 * 初始化一个新创建的 AjaxResult 对象
	 * 
	 * @param type 状态类型
	 * @param msg  返回内容
	 */
	public AjaxResult(Type type, String msg) {
		super.put(CODE_TAG, type.value);
		super.put(MSG_TAG, msg);
	}
	
	/**
	 * 带分页的通用返回值
	 * @param toatlSize  总记录数
	 * @param pageNo     当前页
	 * @param pageSize   每页大小
	 * @param rows       数据
	 */
	public AjaxResult (long total,int pageNo,int pageSize,List<?> rows) {
        Map<String, Object> map = new LinkedHashMap<>();
        map.put(TOTAL_SIZE, total);
        map.put(PAGE_NO, pageNo);
        map.put(PAGE_SIEZ, pageSize);
        map.put(ROWS, rows);
        super.put(CODE_TAG, 0);
        super.put(MSG_TAG, "操作成功");
        super.put(DATA_TAG, map);
    }
	
	/**
             * 带分页的通用返回值
     * @param toatlSize  总记录数
     * @param pageNo     当前页
     * @param pageSize   每页大小
     * @param rows       数据
     */
	public static AjaxResult page(long total,int pageSize,int pageNo,List<?> rows) {
	    return new AjaxResult(total, pageSize, pageNo, rows);
	}

	/**
	 * 初始化一个新创建的 AjaxResult 对象
	 * 
	 * @param type 状态类型
	 * @param msg  返回内容
	 * @param data 数据对象
	 */
	public AjaxResult(Type type, String msg, Object data) {
		super.put(CODE_TAG, type.value);
		super.put(MSG_TAG, msg);
		if (StringUtils.isNotNull(data)) {
			super.put(DATA_TAG, data);
		}
	}

	/**
	 * 返回成功消息
	 * 
	 * @return 成功消息
	 */
	public static AjaxResult success() {
		return AjaxResult.success("操作成功");
	}

	/**
	 * 返回成功数据
	 * 
	 * @return 成功消息
	 */
	public static AjaxResult success(Object data) {
		return AjaxResult.success("操作成功", data);
	}

	/**
	 * 返回成功消息
	 * 
	 * @param msg 返回内容
	 * @return 成功消息
	 */
	public static AjaxResult success(String msg) {
		return AjaxResult.success(msg, null);
	}

	/**
	 * 返回成功消息
	 * 
	 * @param msg  返回内容
	 * @param data 数据对象
	 * @return 成功消息
	 */
	public static AjaxResult success(String msg, Object data) {
		return new AjaxResult(Type.SUCCESS, msg, data);
	}
	
	
	/**
	 * 返回警告消息
	 * 
	 * @param msg 返回内容
	 * @return 警告消息
	 */
	public static AjaxResult warn(String msg) {
		return AjaxResult.warn(msg, null);
	}

	/**
	 * 返回警告消息
	 * 
	 * @param msg  返回内容
	 * @param data 数据对象
	 * @return 警告消息
	 */
	public static AjaxResult warn(String msg, Object data) {
		return new AjaxResult(Type.WARN, msg, data);
	}

	/**
	 * 返回错误消息
	 * 
	 * @return
	 */
	public static AjaxResult error() {
		return AjaxResult.error("操作失败");
	}

	/**
	 * 返回自定义错误码和信息
	 * @param code
	 * @param msg
	 * @return
	 */
	public static AjaxResult error(int code,String msg) {
		return new AjaxResult(code, msg);
	}
	
	/**
	 * 返回错误消息
	 * 
	 * @param msg 返回内容
	 * @return 警告消息
	 */
	public static AjaxResult error(String msg) {
		return AjaxResult.error(msg, null);
	}

	/**
	 * 返回错误消息
	 * 
	 * @param msg  返回内容
	 * @param data 数据对象
	 * @return 警告消息
	 */
	public static AjaxResult error(String msg, Object data) {
		return new AjaxResult(Type.ERROR, msg, data);
	}


}
