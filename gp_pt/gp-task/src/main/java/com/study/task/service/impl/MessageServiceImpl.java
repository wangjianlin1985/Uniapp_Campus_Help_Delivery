package com.study.task.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.common.core.base.BaseServiceImpl;
import com.study.task.dao.MessageDao;
import com.study.task.entity.Message;
import com.study.task.service.MessageService;

@Service
public class MessageServiceImpl extends BaseServiceImpl<Message> implements MessageService{

	@Autowired
	private MessageDao dao;
	
	@Override
	public List<Message> listByOrderId(Long orderId) {
		return dao.listByOrderId(orderId);
	}

}
