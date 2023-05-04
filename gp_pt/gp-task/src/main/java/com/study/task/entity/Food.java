package com.study.task.entity;

import java.io.Serializable;

import lombok.Data;

/**
 * 食物管理
 */
@Data
public class Food implements Serializable{
	private static final long serialVersionUID = 1L;
	
	/**主键ID*/
	private Long id;
	
	/**名称*/
	private String name;
	
	/**描述*/
	private String remark;
	
	/**图片*/
	private String cover;
	
	/**价格*/
	private Float price;
	
	/**排序*/
	private Integer sort;

}
