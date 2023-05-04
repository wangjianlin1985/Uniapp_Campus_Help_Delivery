package com.study.system.service;

import java.util.List;

import com.study.common.core.base.BaseService;
import com.study.system.entity.SysMenuTop;

/**
 */
public interface SysMenuTopService extends BaseService<SysMenuTop> {

	List<SysMenuTop> listAllRedis();

}
