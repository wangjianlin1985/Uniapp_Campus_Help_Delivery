package com.study.task.service;

import com.study.common.core.base.BaseService;
import com.study.task.entity.Taskgoods;

public interface TaskgoodsService extends BaseService<Taskgoods>{
	

	int updateJd(Taskgoods taskgoods);
	
	int updateUnjd(Taskgoods taskgoods);
	
	int updatePs(Taskgoods taskgoods);
	
	int updateWc(Taskgoods taskgoods);
	
	int cancel(Long id);

}
