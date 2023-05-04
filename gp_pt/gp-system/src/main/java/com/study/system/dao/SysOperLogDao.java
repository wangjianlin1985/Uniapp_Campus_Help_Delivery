package com.study.system.dao;

import com.study.common.core.base.BaseDao;
import com.study.system.entity.SysOperLog;

public interface SysOperLogDao extends BaseDao<SysOperLog>{

	// 清空
	int clean();
}
