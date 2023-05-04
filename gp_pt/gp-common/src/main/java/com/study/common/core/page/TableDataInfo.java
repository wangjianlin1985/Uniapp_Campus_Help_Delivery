package com.study.common.core.page;

import java.io.Serializable;
import java.util.List;

import lombok.Data;

@Data
public class TableDataInfo implements Serializable {
	
	private static final long serialVersionUID = 1L;
	/** 总记录数 */
	private long total;
	/** 列表数据 */
	private List<?> rows;
	/** 消息状态码 */
	private int code;

}
