package com.study.task.dao;

import java.util.List;

import com.study.common.core.base.BaseDao;
import com.study.task.entity.TaskgoodsDetail;

public interface TaskgoodsDetailDao extends BaseDao<TaskgoodsDetail> {

	int deleteByTaskgoodsId(Long taskgoodsId);
	
	List<TaskgoodsDetail> listByTaskgoodsId(Long taskgoodsId);
	
}
