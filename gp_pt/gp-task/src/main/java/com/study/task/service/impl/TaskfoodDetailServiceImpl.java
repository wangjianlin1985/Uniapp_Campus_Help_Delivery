package com.study.task.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.common.core.base.BaseServiceImpl;
import com.study.task.dao.TaskfoodDetailDao;
import com.study.task.entity.TaskfoodDetail;
import com.study.task.service.TaskfoodDetailService;

@Service
public class TaskfoodDetailServiceImpl extends BaseServiceImpl<TaskfoodDetail> implements TaskfoodDetailService {

	@Autowired
	private TaskfoodDetailDao dao;

	@Override
	public int deleteByTaskfoodId(Long taskfoodId) {
		return dao.deleteByTaskfoodId(taskfoodId);
	}

	@Override
	public List<TaskfoodDetail> listByTaskfoodId(Long taskfoodId) {
		return dao.listByTaskfoodId(taskfoodId);
	}
	
}
