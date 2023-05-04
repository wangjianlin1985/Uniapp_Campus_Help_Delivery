package com.study.task.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.common.core.base.BaseServiceImpl;
import com.study.task.dao.TaskfoodDao;
import com.study.task.entity.Taskfood;
import com.study.task.service.TaskfoodService;

@Service
public class TaskfoodServiceImpl extends BaseServiceImpl<Taskfood> implements TaskfoodService{

	@Autowired
	private TaskfoodDao dao;
	
	@Override
	public int updateJd(Taskfood taskfood) {
		return dao.updateJd(taskfood);
	}

	@Override
	public int updatePs(Taskfood taskfood) {
		return dao.updatePs(taskfood);
	}

	@Override
	public int updateWc(Taskfood taskfood) {
		return dao.updateWc(taskfood);
	}

	@Override
	public int cancel(Long id) {
		return dao.cancel(id);
	}

	@Override
	public int updateUnjd(Taskfood taskfood) {
		return dao.updateUnjd(taskfood);
	}

}
