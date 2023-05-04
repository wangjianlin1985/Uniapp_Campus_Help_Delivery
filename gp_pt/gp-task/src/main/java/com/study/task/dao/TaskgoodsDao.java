package com.study.task.dao;

import com.study.common.core.base.BaseDao;
import com.study.task.entity.Taskgoods;

public interface TaskgoodsDao extends BaseDao<Taskgoods>{

	int updateJd(Taskgoods taskgoods);
	
	int updateUnjd(Taskgoods taskgoods);
	
	int updatePs(Taskgoods taskgoods);
	
	int updateWc(Taskgoods taskgoods);
	
	int cancel(Long id);

}
