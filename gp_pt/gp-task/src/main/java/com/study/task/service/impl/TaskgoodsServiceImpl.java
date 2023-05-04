package com.study.task.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.common.core.base.BaseServiceImpl;
import com.study.task.dao.TaskgoodsDao;
import com.study.task.entity.Taskgoods;
import com.study.task.service.TaskgoodsService;

@Service
public class TaskgoodsServiceImpl extends BaseServiceImpl<Taskgoods> implements TaskgoodsService{

	@Autowired
	private TaskgoodsDao dao;
	
	@Override
	public int updateJd(Taskgoods taskgoods) {
		return dao.updateJd(taskgoods);
	}

	@Override
	public int updatePs(Taskgoods taskgoods) {
		return dao.updatePs(taskgoods);
	}

	@Override
	public int updateWc(Taskgoods taskgoods) {
		return dao.updateWc(taskgoods);
	}

	@Override
	public int cancel(Long id) {
		return dao.cancel(id);
	}

	@Override
	public int updateUnjd(Taskgoods taskgoods) {
		return dao.updateUnjd(taskgoods);
	}
	
}
