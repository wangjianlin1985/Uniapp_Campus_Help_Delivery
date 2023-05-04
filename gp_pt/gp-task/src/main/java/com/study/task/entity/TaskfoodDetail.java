package com.study.task.entity;

import java.io.Serializable;

import lombok.Data;

@Data
public class TaskfoodDetail implements Serializable{
	
	private static final long serialVersionUID = 1L;

	private Long id;
	
	private Long taskfoodId;
	
	private Food food;

}
