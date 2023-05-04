package com.study.task.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.common.core.base.BaseServiceImpl;
import com.study.task.dao.TaskprintDao;
import com.study.task.entity.Taskprint;
import com.study.task.service.TaskprintService;

@Service
public class TaskprintServiceImpl extends BaseServiceImpl<Taskprint> implements TaskprintService {

	@Autowired
	private TaskprintDao dao;
	
	@Override
	public int updateJd(Taskprint taskprint) {
		return dao.updateJd(taskprint);
	}

	@Override
	public int updatePs(Taskprint taskprint) {
		return dao.updatePs(taskprint);
	}

	@Override
	public int updateWc(Taskprint taskprint) {
		return dao.updateWc(taskprint);
	}

	@Override
	public int cancel(Long id) {
		return dao.cancel(id);
	}

	@Override
	public int updateUnjd(Taskprint taskprint) {
		return dao.updateUnjd(taskprint);
	}
	
	
}
