package com.study.task.entity;

import java.io.Serializable;

import lombok.Data;

/**
 * 地址管理 
 */
@Data
public class Address implements Serializable{

	private static final long serialVersionUID = 1L;

	/**主键ID*/
	private Long id;
	
	/**用户*/
	private Long userId;
	
	/**地址*/
	private String content;
	
	/**联系人*/
	private String phone;
	
	/**1默认地址，0非默认地址*/
	private Integer status;
	
}
