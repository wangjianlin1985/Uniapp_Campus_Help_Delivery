package com.study.task.service;

import java.util.List;

import com.study.common.core.base.BaseService;
import com.study.task.entity.TaskfoodDetail;

public interface TaskfoodDetailService extends BaseService<TaskfoodDetail> {
	
	int deleteByTaskfoodId(Long taskfoodId);
	
	List<TaskfoodDetail> listByTaskfoodId(Long taskfoodId);

}
