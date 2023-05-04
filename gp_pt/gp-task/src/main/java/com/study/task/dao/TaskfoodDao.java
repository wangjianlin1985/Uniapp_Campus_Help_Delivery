package com.study.task.dao;

import com.study.common.core.base.BaseDao;
import com.study.task.entity.Taskfood;

public interface TaskfoodDao extends BaseDao<Taskfood>{
	
	int updateJd(Taskfood taskfood);
	
	int updateUnjd(Taskfood taskfood);
	
	int updatePs(Taskfood taskfood);
	
	int updateWc(Taskfood taskfood);
	
	int cancel(Long id);

}
