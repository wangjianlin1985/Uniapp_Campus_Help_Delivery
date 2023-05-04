package com.study.system.service;

import java.util.List;

import com.study.common.core.base.BaseService;
import com.study.common.core.domain.Ztree;
import com.study.system.entity.SysUser;

public interface SysUserService extends BaseService<SysUser> {

	List<SysUser> selectAllocatedList(SysUser user);

	List<SysUser> selectUnallocatedList(SysUser user);

	SysUser selectUserByLoginName(SysUser user);

	int updateUserInfo(SysUser user);

	int resetUserPwd(SysUser user);

	String checkLoginNameUnique(SysUser user);

	String checkUsercodeUnique(SysUser user);

	String checkIdcardnoUnique(SysUser user);

	String selectUserRoleGroup(Long userId);

	String selectUserPostGroup(Long userId);

	String importUser(List<SysUser> userList, Boolean isUpdateSupport, String operName);

	int changeStatus(SysUser user);

	List<Ztree> treeData(Integer userType);

	List<SysUser> selectUserByRoleId(Long roleId);
	
	int updateUserName(SysUser user);
	int updatePhonenumber(SysUser user);
	int updateEmail(SysUser user);

	// 获取余额
	float getBalance(Long userId);
	// 更新余额
	int updateBalance(Long userId,float balance);
	
	int updateRz(SysUser user);
	
	int getRz(Long userId);
}
