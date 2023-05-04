package com.study.task.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.common.core.base.BaseServiceImpl;
import com.study.task.dao.MomentDao;
import com.study.task.entity.Moment;
import com.study.task.entity.MomentImage;
import com.study.task.service.MomentService;

@Service
public class MomentServiceImpl extends BaseServiceImpl<Moment> implements MomentService{

	@Autowired
	private MomentDao dao;
	
	@Override
	public List<MomentImage> listImage(Long momentId) {
		return dao.listImage(momentId);
	}

	@Override
	public int addImageBatch(List<MomentImage> list) {
		return dao.addImageBatch(list);
	}

}
