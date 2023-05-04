package com.study.task.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.common.core.base.BaseServiceImpl;
import com.study.task.dao.TaskgoodsDetailDao;
import com.study.task.entity.TaskgoodsDetail;
import com.study.task.service.TaskgoodsDetailService;

@Service
public class TaskgoodsDetailServiceImpl extends BaseServiceImpl<TaskgoodsDetail> implements TaskgoodsDetailService {

	@Autowired
	private TaskgoodsDetailDao dao;

	@Override
	public int deleteByTaskgoodsId(Long taskgoodsId) {
		return dao.deleteByTaskgoodsId(taskgoodsId);
	}

	@Override
	public List<TaskgoodsDetail> listByTaskgoodsId(Long taskgoodsId) {
		return dao.listByTaskgoodsId(taskgoodsId);
	}
	
}
