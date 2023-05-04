package com.study.system.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.study.common.core.base.BaseServiceImpl;
import com.study.system.constant.SystemRedisKey;
import com.study.system.entity.SysMenuTop;
import com.study.system.service.SysMenuTopService;

@Service
public class SysMenuTopServiceImpl extends BaseServiceImpl<SysMenuTop> implements SysMenuTopService {

	@Override
	public List<SysMenuTop> listAllRedis() {
		return super.listRedis(new SysMenuTop(), SystemRedisKey.SYSTEM_MENU_TOP_ALL);
	}

}
