package com.study.task.dao;

import java.util.List;

import com.study.common.core.base.BaseDao;
import com.study.task.entity.TaskfoodDetail;

public interface TaskfoodDetailDao extends BaseDao<TaskfoodDetail>{

	int deleteByTaskfoodId(Long taskfoodId);
	
	List<TaskfoodDetail> listByTaskfoodId(Long taskfoodId);
	
}
