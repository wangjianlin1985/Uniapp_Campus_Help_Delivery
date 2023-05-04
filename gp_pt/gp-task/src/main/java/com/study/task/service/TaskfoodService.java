package com.study.task.service;

import com.study.common.core.base.BaseService;
import com.study.task.entity.Taskfood;

public interface TaskfoodService extends BaseService<Taskfood>{
	
	int updateJd(Taskfood taskfood);
	
	int updateUnjd(Taskfood taskfood);
	
	int updatePs(Taskfood taskfood);
	
	int updateWc(Taskfood taskfood);
	
	int cancel(Long id);

}
