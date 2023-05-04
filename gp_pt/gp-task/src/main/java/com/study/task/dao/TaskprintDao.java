package com.study.task.dao;

import com.study.common.core.base.BaseDao;
import com.study.task.entity.Taskprint;

public interface TaskprintDao extends BaseDao<Taskprint>{

	int updateJd(Taskprint taskprint);
	
	int updateUnjd(Taskprint taskprint);
	
	int updatePs(Taskprint taskprint);
	
	int updateWc(Taskprint taskprint);
	
	int cancel(Long id);

}
