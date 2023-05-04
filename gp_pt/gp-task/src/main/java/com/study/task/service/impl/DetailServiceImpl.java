package com.study.task.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.common.core.base.BaseServiceImpl;
import com.study.task.dao.DetailDao;
import com.study.task.entity.Detail;
import com.study.task.service.DetailService;

@Service
public class DetailServiceImpl extends BaseServiceImpl<Detail> implements DetailService{

	@Autowired
	private DetailDao dao;
	
	@Override
	public int deleteByOrderId(Long orderId,String type) {
		Map<String, Object> map = new HashMap<>();
		map.put("orderId", orderId);
		map.put("type", type);
		return dao.deleteByOrderId(map);
	}

}
