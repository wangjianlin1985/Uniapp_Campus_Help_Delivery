package com.study.task.dao;

import java.util.Map;

import com.study.common.core.base.BaseDao;
import com.study.task.entity.Detail;

public interface DetailDao extends BaseDao<Detail>{

	int deleteByOrderId(Map<String, Object> map);
	
}
