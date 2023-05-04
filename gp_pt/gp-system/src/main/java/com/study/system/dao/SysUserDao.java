package com.study.system.dao;

import java.util.List;
import java.util.Map;

import com.study.common.core.base.BaseDao;
import com.study.system.entity.SysUser;

public interface SysUserDao extends BaseDao<SysUser>{
	List<SysUser> selectAllocatedList(SysUser user);
	List<SysUser> selectUnallocatedList(SysUser user);
	SysUser selectUserByLoginName(SysUser user);
	int checkLoginNameUnique(SysUser user);
	SysUser checkUsercodeUnique(SysUser user);
	SysUser checkIdcardnoUnique(SysUser user);
	List<SysUser> selectUserByRoleId(Long roleId);
	SysUser selectUserByOpenid(String openid);
	int updateOpenid(SysUser user);
	int cleanOpenid(String loginName);
	List<SysUser> listAllTeacher(SysUser user);
	
	
	int updateUserName(SysUser user);
	int updatePhonenumber(SysUser user);
	int updateEmail(SysUser user);
	
	// 获取余额
	float getBalance(Long userId);
	// 更新余额
	int updateBalance(Map<String, Object> map);
	
	int updateRz(SysUser user);
	
	int getRz(Long userId);
}
