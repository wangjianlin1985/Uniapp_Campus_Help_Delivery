package com.study.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.common.core.base.BaseServiceImpl;
import com.study.system.dao.SysLogininforDao;
import com.study.system.entity.SysLogininfor;
import com.study.system.service.SysLogininforService;

@Service
public class SysLogininforServiceImpl extends BaseServiceImpl<SysLogininfor> implements SysLogininforService {

	@Autowired
	private SysLogininforDao dao;

	@Override
	public int clean() {
		return dao.clean();
	}

}
