package com.study.task.entity;

import java.io.Serializable;

import com.study.system.entity.SysUser;

import lombok.Data;

/**
 * 打印任务
 */
@Data
public class Taskprint implements Serializable{

	private static final long serialVersionUID = 1L;
	
	/**主键ID*/
	private Long id;
	
	/**内容*/
	private String remark;
	
	/**打印多少张*/
	private Integer pages;
	
	/** 附件*/
	private String path;
	
	/**单号*/
	private String num;
	
	/**发布人*/
	private SysUser user;
	
	/**收货地点*/
	private Address address;
	
	/**总金额*/
	private Float money;
	
	/**距离*/
	private Float distance;
	
	/**跑腿价格*/
	private Float moneyPaotui;
	
	/**打印价格*/
	private Float moneyPrint;
	
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
