package com.study.task.service;

import com.study.common.core.base.BaseService;
import com.study.task.entity.Detail;

public interface DetailService extends BaseService<Detail>{
	
	int deleteByOrderId(Long orderId,String type);

}
