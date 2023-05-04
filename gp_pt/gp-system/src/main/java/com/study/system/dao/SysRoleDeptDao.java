package com.study.system.dao;

import com.study.common.core.base.BaseDao;
import com.study.system.entity.SysRoleDept;

public interface SysRoleDeptDao extends BaseDao<SysRoleDept>{

	/**
	 * 根据roleId删除
	 * @param roleId
	 * @return
	 */
	int deleteRoleDeptByRoleId(Long roleId);
	
	/**
	 * 查询部门使用数量
	 * @param deptId
	 * @return
	 */
	int selectCountRoleDeptByDeptId(Long deptId);
	
}
