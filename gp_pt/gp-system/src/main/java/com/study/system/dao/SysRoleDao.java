package com.study.system.dao;

import java.util.List;

import com.study.common.core.base.BaseDao;
import com.study.system.entity.SysRole;

public interface SysRoleDao extends BaseDao<SysRole>{

	List<SysRole> selectRolesByUserId(Long userId);
	
	SysRole checkRoleKeyUnique(SysRole role);
	
	int countUserRoleByRoleId(Long roleId);
	
}
