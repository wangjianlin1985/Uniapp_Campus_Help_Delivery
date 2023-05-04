package com.study.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.common.core.base.BaseServiceImpl;
import com.study.system.dao.SysOperLogDao;
import com.study.system.entity.SysOperLog;
import com.study.system.service.SysOperLogService;

@Service
public class SysOperLogServiceImpl extends BaseServiceImpl<SysOperLog> implements SysOperLogService {

	@Autowired
	private SysOperLogDao dao;

	@Override
	public int clean() {
		return dao.clean();
	}

}
