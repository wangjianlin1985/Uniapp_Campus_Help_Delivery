package com.study.task.entity;

import java.io.Serializable;
import java.util.List;

import com.study.system.entity.SysUser;

import lombok.Data;

@Data
public class Taskfood implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	/**主键ID*/
	private Long id;
	
	List<Food> foodList;
	
	List<TaskfoodDetail> detailList;
	
	/**订单号*/
	private String num;
	
	/**备注*/
	private String remark;
	
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
	
	/**食物价格*/
	private Float moneyFood;
	
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
