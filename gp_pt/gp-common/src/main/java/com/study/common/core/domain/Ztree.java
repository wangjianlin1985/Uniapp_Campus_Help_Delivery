package com.study.common.core.domain;

import java.io.Serializable;
import java.util.Map;

import lombok.Getter;
import lombok.Setter;

/**
 * 树结构处理
 */
@Getter
@Setter
public class Ztree implements Serializable {
	
	private static final long serialVersionUID = 1L;

	/** 节点ID */
	private Long id;

	/** 节点父ID */
	private Long pId;

	/** 节点名称 */
	private String name;

	/** 节点标题 */
	private String title;
	
	/** 自定义属性 */
	private Map<String, Object> attr;

	/** 是否勾选 */
	private boolean checked = false;

	/** 是否展开 */
	private boolean open = false;

	/** 是否能勾选 */
	private boolean nocheck = false;


	public Long getpId() {
		return pId;
	}

	public void setpId(Long pId) {
		this.pId = pId;
	}

}
