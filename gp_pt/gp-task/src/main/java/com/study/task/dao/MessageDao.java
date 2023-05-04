package com.study.task.dao;

import java.util.List;

import com.study.common.core.base.BaseDao;
import com.study.task.entity.Message;

public interface MessageDao extends BaseDao<Message> {

	List<Message> listByOrderId(Long orderId);
	
}
