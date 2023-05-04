package com.study.common.enums;

/**
 * 通用状态标记
 */
public enum CommonStatus {

	OK(0, "正常"), DELETED(1, "删除"), DISABLE(2, "停用") ;
	
	private final Integer code;
	private final String info;

	CommonStatus(Integer code, String info) {
		this.code = code;
		this.info = info;
	}

	public Integer getCode() {
		return code;
	}

	public String getInfo() {
		return info;
	}

}
