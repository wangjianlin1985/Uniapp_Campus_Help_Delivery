package com.study.task.service;

import java.util.List;

import com.study.common.core.base.BaseService;
import com.study.task.entity.TaskgoodsDetail;

public interface TaskgoodsDetailService extends BaseService<TaskgoodsDetail>  {

	int deleteByTaskgoodsId(Long taskgoodsId);
	
	List<TaskgoodsDetail> listByTaskgoodsId(Long taskgoodsId);
}
