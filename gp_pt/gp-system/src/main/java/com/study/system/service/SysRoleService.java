package com.study.system.service;

import java.util.List;
import java.util.Set;

import com.study.common.core.base.BaseService;
import com.study.system.entity.SysRole;
import com.study.system.entity.SysUserRole;

public interface SysRoleService extends BaseService<SysRole> {

	Set<String> selectRoleKeys(Long userId);

	List<SysRole> selectRolesByUserId(Long userId);

	int authDataScope(SysRole role);

	String checkRoleKeyUnique(SysRole role);

	int countUserRoleByRoleId(Long roleId);

	int changeStatus(SysRole role);

	int deleteAuthUser(SysUserRole userRole);

	int deleteAuthUsers(Long roleId, String userIds);

	/**
	 * 删除该角色ID下面的所有用户
	 * 
	 * @param roleId
	 * @return
	 */
	int deleteAuthUsers(Long roleId);

	int insertAuthUsers(Long roleId, String userIds);

}
