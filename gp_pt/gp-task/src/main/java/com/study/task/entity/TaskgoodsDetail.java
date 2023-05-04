package com.study.task.entity;

import java.io.Serializable;

import lombok.Data;

@Data
public class TaskgoodsDetail implements Serializable{
	
	private static final long serialVersionUID = 1L;

	private Long id;
	
	private Long taskgoodsId;
	
	private Goods goods;

}
