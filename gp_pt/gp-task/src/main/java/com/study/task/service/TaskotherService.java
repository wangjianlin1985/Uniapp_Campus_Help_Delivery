package com.study.task.service;

import com.study.common.core.base.BaseService;
import com.study.task.entity.Taskother;

public interface TaskotherService extends BaseService<Taskother>{

	int updateJd(Taskother taskother);
	
	int updateUnjd(Taskother taskother);
	
	int updatePs(Taskother taskother);
	
	int updateWc(Taskother taskother);
	
	int cancel(Long id);
		
}
