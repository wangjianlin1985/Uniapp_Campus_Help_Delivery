package com.study.task.service;

import com.study.common.core.base.BaseService;
import com.study.task.entity.Taskprint;

public interface TaskprintService extends BaseService<Taskprint>{

	int updateJd(Taskprint taskprint);
	
	int updateUnjd(Taskprint taskprint);
	
	int updatePs(Taskprint taskprint);
	
	int updateWc(Taskprint taskprint);
	
	int cancel(Long id);

}
