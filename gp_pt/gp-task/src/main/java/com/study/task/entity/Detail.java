package com.study.task.entity;

import java.io.Serializable;

import lombok.Data;

/**
 * 钱流水详情 
 */
@Data
public class Detail implements Serializable{

	private static final long serialVersionUID = 1L;

	/**主键ID*/
	private Long id;
	
	private Long userId;
	
	private String utype; // user/pty
	
	private String time;
	
	private String io;  // in 进，out 出
	
	private String type; // 快递，跑腿。。。。
	
	private Long orderId; // 订单的id，即快递的ID，跑腿的ID等等等
	
	private float money;  // 金额
	
	private String remark; // 说明
	
	
}

 