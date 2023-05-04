package com.study.task.service;

import java.util.List;

import com.study.common.core.base.BaseService;
import com.study.task.entity.Message;

public interface MessageService extends BaseService<Message>{
	
	List<Message> listByOrderId(Long orderId);

}
