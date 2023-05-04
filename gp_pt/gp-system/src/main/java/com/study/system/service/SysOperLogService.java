package com.study.system.service;

import com.study.common.core.base.BaseService;
import com.study.system.entity.SysOperLog;

public interface SysOperLogService extends BaseService<SysOperLog> {

	// 清空
	int clean();

}
