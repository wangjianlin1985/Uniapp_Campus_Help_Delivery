package com.study.system.dao;

import java.util.List;

import com.study.common.core.base.BaseDao;
import com.study.system.entity.SysUserOnline;

public interface SysUserOnlineDao extends BaseDao<SysUserOnline>{
	SysUserOnline selectOnlineById(String sessionId);
	int deleteOnlineById(String sessionId);
	int saveOnline(SysUserOnline online);
	List<SysUserOnline> selectOnlineByExpired(String lastAccessTime);
	void deleteOnlineByIds(String[] sessionIds);
}
