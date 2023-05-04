package com.study.task.entity;

import java.io.Serializable;

import com.study.system.entity.SysUser;

import lombok.Data;

@Data
public class Message implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	/**主键ID*/
	private Long id;
	
	/**回复的内容*/
	private String content;
	
	/**时间*/
	private String time;
	
	/**哪一个订单*/
	private Long orderId;
	
	/**发布人*/
	private SysUser user;
	
	/**use/pty*/
	private String utype; 
	

}
