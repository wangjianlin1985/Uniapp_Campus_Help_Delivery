package com.study.task.dao;

import com.study.common.core.base.BaseDao;
import com.study.task.entity.Taskother;

public interface TaskotherDao extends BaseDao<Taskother>{

	int updateJd(Taskother taskother);
	
	int updateUnjd(Taskother taskother);
	
	int updatePs(Taskother taskother);
	
	int updateWc(Taskother taskother);
	
	int cancel(Long id);
	
}
