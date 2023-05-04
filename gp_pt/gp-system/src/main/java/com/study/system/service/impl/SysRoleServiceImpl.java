package com.study.system.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.study.common.constant.UserConstants;
import com.study.common.core.base.BaseServiceImpl;
import com.study.common.core.text.Convert;
import com.study.common.enums.CommonStatus;
import com.study.common.exception.BusinessException;
import com.study.common.util.StringUtils;
import com.study.system.dao.SysRoleDao;
import com.study.system.dao.SysRoleDeptDao;
import com.study.system.dao.SysRoleMenuDao;
import com.study.system.dao.SysUserRoleDao;
import com.study.system.entity.SysRole;
import com.study.system.entity.SysRoleDept;
import com.study.system.entity.SysRoleMenu;
import com.study.system.entity.SysUserRole;
import com.study.system.service.SysRoleService;


@Service
public class SysRoleServiceImpl extends BaseServiceImpl<SysRole> implements SysRoleService {

	@Autowired
	private SysRoleDao roleDao;
	@Autowired
	private SysRoleMenuDao roleMenuDao;
	@Autowired
	private SysUserRoleDao userRoleDao;
	@Autowired
	private SysRoleDeptDao roleDeptDao;

	@Override
	public List<SysRole> list(SysRole role) {
		return roleDao.list(role);
	}

	@Override
	public Set<String> selectRoleKeys(Long userId) {
		List<SysRole> perms = roleDao.selectRolesByUserId(userId);
		Set<String> permsSet = new HashSet<>();
		for (SysRole perm : perms) {
			if (StringUtils.isNotNull(perm)) {
				permsSet.addAll(Arrays.asList(perm.getRoleKey().trim().split(",")));
			}
		}
		return permsSet;
	}

	@Override
	public List<SysRole> selectRolesByUserId(Long userId) {
		List<SysRole> userRoles = roleDao.selectRolesByUserId(userId);
		List<SysRole> roles = listAll(new SysRole());
		for (SysRole role : roles) {
			for (SysRole userRole : userRoles) {
				if (role.getRoleId().longValue() == userRole.getRoleId().longValue()) {
					role.setFlag(true);
					break;
				}
			}
		}
		return roles;
	}

	/**
	 * @Override public List<SysRole> listAll(SysRole role) { return
	 *           SpringUtils.getAopProxy(this).listAll(role); }
	 */

	@Transactional
	@Override
	public int add(SysRole role) {
		roleDao.add(role);
		return insertRoleMenu(role);
	}

	@Override
	@Transactional
	public int update(SysRole role) {
		// 修改角色信息
		roleDao.update(role);
		// 删除角色与菜单关联
		roleMenuDao.deleteRoleMenuByRoleId(role.getRoleId());
		return insertRoleMenu(role);
	}

	public int insertRoleMenu(SysRole role) {
		int rows = 1;
		// 新增用户与角色管理
		List<SysRoleMenu> list = new ArrayList<SysRoleMenu>();
		for (Long menuId : role.getMenuIds()) {
			SysRoleMenu rm = new SysRoleMenu();
			rm.setRoleId(role.getRoleId());
			rm.setMenuId(menuId);
			list.add(rm);
		}
		if (list.size() > 0) {
			rows = roleMenuDao.addBatch(list);
		}
		return rows;
	}

	@Override
	@Transactional
	public int authDataScope(SysRole role) {
		// 修改角色信息
		roleDao.update(role);
		// 删除角色与部门关联
		roleDeptDao.deleteRoleDeptByRoleId(role.getRoleId());
		// 新增角色和部门信息（数据权限）
		return insertRoleDept(role);
	}

	public int insertRoleDept(SysRole role) {
		int rows = 1;
		// 新增角色与部门（数据权限）管理
		List<SysRoleDept> list = new ArrayList<SysRoleDept>();
		for (Long deptId : role.getDeptIds()) {
			SysRoleDept rd = new SysRoleDept();
			rd.setRoleId(role.getRoleId());
			rd.setDeptId(deptId);
			list.add(rd);
		}
		if (list.size() > 0) {
			rows = roleDeptDao.addBatch(list);
		}
		return rows;
	}

	@Override
	public String checkRoleKeyUnique(SysRole role) {
		Long roleId = StringUtils.isNull(role.getRoleId()) ? -1L : role.getRoleId();
		SysRole info = roleDao.checkRoleKeyUnique(role);
		if (StringUtils.isNotNull(info) && info.getRoleId().longValue() != roleId.longValue()) {
			return UserConstants.ROLE_KEY_NOT_UNIQUE;
		}
		return UserConstants.ROLE_KEY_UNIQUE;
	}

	@Override
	public int countUserRoleByRoleId(Long roleId) {
		return roleDao.countUserRoleByRoleId(roleId);
	}

	@Override
	public int changeStatus(SysRole role) {
		return roleDao.update(role);
	}

	@Override
	public int deleteAuthUser(SysUserRole userRole) {
		return userRoleDao.deleteUserRoleInfo(userRole);
	}

	@Override
	public int deleteAuthUsers(Long roleId, String userIds) {
		return userRoleDao.deleteUserRoleInfos(roleId, Convert.toLongArray(userIds));
	}

	@Override
	public int deleteAuthUsers(Long roleId) {
		return userRoleDao.deleteAuthUsers(roleId);
	}

	@Override
	public int insertAuthUsers(Long roleId, String userIds) {
		Long[] users = Convert.toLongArray(userIds);
		// 新增用户与角色管理
		List<SysUserRole> list = new ArrayList<SysUserRole>();
		for (Long userId : users) {
			SysUserRole ur = new SysUserRole();
			ur.setUserId(userId);
			ur.setRoleId(roleId);
			list.add(ur);
		}
		return userRoleDao.addBatch(list);
	}

	@Override
	@Transactional
	public int deleteBatch(Long[] ids, String deleteBy) throws BusinessException {
		// 判断是否有用户
		for (Long id : ids) {
			if (countUserRoleByRoleId(id) > 0) {
				SysRole role = roleDao.getById(id);
				throw new BusinessException(String.format("%1$s已分配,不能删除", role.getRoleName()));
			}
		}
		// 删除角色菜单表
		// 删除角色部门表
		for (Long id : ids) {
			roleMenuDao.deleteRoleMenuByRoleId(id);
			roleDeptDao.deleteRoleDeptByRoleId(id);
		}
		Map<String, Object> map = new HashMap<>();
		map.put("deleteBy", deleteBy);
		map.put("array", ids);
		map.put("deleteFlag", CommonStatus.DELETED.getCode());
		return roleDao.deleteBatchMapArray(map);
	}

}
