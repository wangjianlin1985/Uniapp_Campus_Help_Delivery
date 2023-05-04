package com.study.system.dao;

import com.study.common.core.base.BaseDao;
import com.study.system.entity.SysRoleMenu;

public interface SysRoleMenuDao extends BaseDao<SysRoleMenu>{
	int deleteRoleMenuByRoleId(Long roleId);
	int deleteRoleMenu(Long[] ids);
	int selectCountRoleMenuByMenuId(Long menuId);
}
