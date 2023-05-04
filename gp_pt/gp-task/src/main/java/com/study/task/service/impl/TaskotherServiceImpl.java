package com.study.task.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.common.core.base.BaseServiceImpl;
import com.study.task.dao.TaskotherDao;
import com.study.task.entity.Taskother;
import com.study.task.service.TaskotherService;

@Service
public class TaskotherServiceImpl extends BaseServiceImpl<Taskother> implements TaskotherService{

	@Autowired
	private TaskotherDao dao;
	
	@Override
	public int updateJd(Taskother taskother) {
		return dao.updateJd(taskother);
	}

	@Override
	public int updatePs(Taskother taskother) {
		return dao.updatePs(taskother);
	}

	@Override
	public int updateWc(Taskother taskother) {
		return dao.updateWc(taskother);
	}

	@Override
	public int cancel(Long id) {
		return dao.cancel(id);
	}

	@Override
	public int updateUnjd(Taskother taskother) {
		return dao.updateUnjd(taskother);
	}
	
}
