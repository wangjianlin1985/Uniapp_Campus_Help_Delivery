package com.study.task.entity;

import java.io.Serializable;

import com.study.system.entity.SysUser;

import lombok.Data;
/**
 * 快递
 */
@Data
public class Parcel implements Serializable {

	private static final long serialVersionUID = 1L;

	/**主键ID*/
	private Long id;
	
	/**快递单号*/
	private String code;
	
	/**订单号*/
	private String num;
	
	/**取货地点*/
	private String place;
	
	/**备注*/
	private String remark;
	
	/**发布人*/
	private SysUser user;
	
	/**收货地点*/
	private Address address;
	
	/**快递重量*/
	private Float weight;
	
	/**价格*/
	private Float money;
	
	/**发布时间*/
	private String fbsj;
	
	/**状态 0待接单，1已接单，2配送中，3已完成，4已取消 */
	private Integer status; 
	
	/**接单时间*/
	private String jdsj;
	
	/**跑腿员*/
	private SysUser pty;
	
	/**完成时间*/
	private String wcsj;
	
	private String unwc;
	
	private String start;
	
	private String end;
	
}
