package com.study.system.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.study.common.constant.UserConstants;
import com.study.common.core.base.BaseServiceImpl;
import com.study.common.core.domain.Ztree;
import com.study.common.exception.BusinessException;
import com.study.common.util.AESUtil;
import com.study.common.util.Md5Utils;
import com.study.common.util.StringUtils;
import com.study.system.dao.SysDeptDao;
import com.study.system.dao.SysPostDao;
import com.study.system.dao.SysRoleDao;
import com.study.system.dao.SysUserDao;
import com.study.system.dao.SysUserPostDao;
import com.study.system.dao.SysUserRoleDao;
import com.study.system.entity.SysDept;
import com.study.system.entity.SysPost;
import com.study.system.entity.SysRole;
import com.study.system.entity.SysUser;
import com.study.system.entity.SysUserPost;
import com.study.system.entity.SysUserRole;
import com.study.system.service.SysConfigService;
import com.study.system.service.SysUserService;


@Service
public class SysUserServiceImpl extends BaseServiceImpl<SysUser> implements SysUserService {

	@Autowired
	private SysUserDao userDao;
	@Autowired
	private SysRoleDao roleDao;
	@Autowired
	private SysPostDao postDao;
	@Autowired
	private SysUserPostDao userPostDao;
	@Autowired
	private SysUserRoleDao userRoleDao;
	@Autowired
	private SysConfigService configService;
	@Autowired
	private SysDeptDao deptDao;

	@Override
	public List<SysUser> list(SysUser user) {
		return userDao.list(user);
	}

	@Override
	public List<SysUser> selectAllocatedList(SysUser user) {
		return userDao.selectAllocatedList(user);
	}

	@Override
	public List<SysUser> selectUnallocatedList(SysUser user) {
		return userDao.selectUnallocatedList(user);
	}

	@Override
	public SysUser selectUserByLoginName(SysUser user) {
		return userDao.selectUserByLoginName(user);
	}

	@Override
	public int updateUserInfo(SysUser user) {
		return userDao.update(user);
	}

	@Override
	public int resetUserPwd(SysUser user) {
		return userDao.update(user);
	}

	@Override
	public String checkLoginNameUnique(SysUser user) {
		int count = userDao.checkLoginNameUnique(user);
		if (count > 0) {
			return UserConstants.USER_NAME_NOT_UNIQUE;
		}
		return UserConstants.USER_NAME_UNIQUE;
	}

	@Override
	public String selectUserRoleGroup(Long userId) {
		List<SysRole> list = roleDao.selectRolesByUserId(userId);
		StringBuffer idsStr = new StringBuffer();
		for (SysRole role : list) {
			idsStr.append(role.getRoleName()).append(",");
		}
		if (StringUtils.isNotEmpty(idsStr.toString())) {
			return idsStr.substring(0, idsStr.length() - 1);
		}
		return idsStr.toString();
	}

	@Override
	public int delete(SysUser user) {
		// 删除用户与角色关联
		userRoleDao.deleteUserRoleByUserId(user.getUserId());
		// 删除用户与岗位表
		userPostDao.deleteUserPostByUserId(user.getUserId());
		return userDao.delete(user);
	}

	@Transactional
	@Override
	public int add(SysUser user) {
		int rows = userDao.add(user);
		// 新增用户岗位关联
		insertUserPost(user);
		// 新增用户与角色管理
		insertUserRole(user);
		return rows;
	}

	@Override
	@Transactional
	public int update(SysUser user) {
		Long userId = user.getUserId();
		// 删除用户与角色关联
		userRoleDao.deleteUserRoleByUserId(userId);
		// 新增用户与角色管理
		insertUserRole(user);
		// 删除用户与岗位关联
		userPostDao.deleteUserPostByUserId(userId);
		// 新增用户与岗位管理
		insertUserPost(user);
		return userDao.update(user);
	}

	@Override
	public String selectUserPostGroup(Long userId) {
		List<SysPost> list = postDao.selectPostsByUserId(userId);
		StringBuffer idsStr = new StringBuffer();
		for (SysPost post : list) {
			idsStr.append(post.getPostName()).append(",");
		}
		if (StringUtils.isNotEmpty(idsStr.toString())) {
			return idsStr.substring(0, idsStr.length() - 1);
		}
		return idsStr.toString();
	}

	@Override
	public String importUser(List<SysUser> userList, Boolean isUpdateSupport, String operName) {
		if (StringUtils.isNull(userList) || userList.size() == 0) {
			throw new BusinessException("导入用户数据不能为空！");
		}
		int successNum = 0;
		int failureNum = 0;
		StringBuilder successMsg = new StringBuilder();
		StringBuilder failureMsg = new StringBuilder();
		String password = configService.getConfigByKey("sys.user.initPassword");
		for (SysUser user : userList) {
			try {
				// 验证是否存在这个用户
				SysUser u = userDao.selectUserByLoginName(user);
				if (StringUtils.isNull(u)) {
					user.setPassword(Md5Utils.hash(user.getLoginName() + password));
					user.setOldpwd(AESUtil.encrypt(password));
					user.setCreateBy(operName);
					/**
					 * user.setPhonenumber(RandomDataUtil.getTelephone());
					 * user.setIdcardno(RandomDataUtil.getIdcardno());
					 * user.setEmail(RandomDataUtil.getEmail(6, 10));
					 */
					this.add(user);

					/** 批量时添加角色 */
					Long[] roleIds = { 107L };// 普通教师
					user.setRoleIds(roleIds);
					insertUserRole(user);

					successNum++;
					successMsg.append("<br/>" + successNum + "、账号 " + user.getLoginName() + " 导入成功");
				} else if (isUpdateSupport) {
					user.setUpdateBy(operName);
					this.update(user);
					successNum++;
					successMsg.append("<br/>" + successNum + "、账号 " + user.getLoginName() + " 更新成功");
				} else {
					failureNum++;
					failureMsg.append("<br/>" + failureNum + "、账号 " + user.getLoginName() + " 已存在");
				}
			} catch (Exception e) {
				failureNum++;
				String msg = "<br/>" + failureNum + "、账号 " + user.getLoginName() + " 导入失败：";
				failureMsg.append(msg + e.getMessage());
			}
		}
		if (failureNum > 0) {
			failureMsg.insert(0, "很抱歉，导入失败！共 " + failureNum + " 条数据格式不正确，错误如下：");
			throw new BusinessException(failureMsg.toString());
		} else {
			successMsg.insert(0, "恭喜您，数据已全部导入成功！共 " + successNum + " 条，数据如下：");
		}
		return successMsg.toString();
	}

	@Override
	public int changeStatus(SysUser user) {
		if (SysUser.isAdmin(user.getUserId())) {
			throw new BusinessException("不允许修改超级管理员用户");
		}
		return userDao.update(user);
	}

	/**
	 * 新增用户角色信息
	 * 
	 * @param user 用户对象
	 */
	public void insertUserRole(SysUser user) {
		Long[] roles = user.getRoleIds();
		if (StringUtils.isNotNull(roles)) {
			// 新增用户与角色管理
			List<SysUserRole> list = new ArrayList<SysUserRole>();
			for (Long roleId : roles) {
				SysUserRole ur = new SysUserRole();
				ur.setUserId(user.getUserId());
				ur.setRoleId(roleId);
				list.add(ur);
			}
			if (list.size() > 0) {
				userRoleDao.addBatch(list);
			}
		}
	}

	/**
	 * 新增用户岗位信息
	 * 
	 * @param user 用户对象
	 */
	public void insertUserPost(SysUser user) {
		Long[] posts = user.getPostIds();
		if (StringUtils.isNotNull(posts)) {
			// 新增用户与岗位管理
			List<SysUserPost> list = new ArrayList<SysUserPost>();
			for (Long postId : posts) {
				SysUserPost up = new SysUserPost();
				up.setUserId(user.getUserId());
				up.setPostId(postId);
				list.add(up);
			}
			if (list.size() > 0) {
				userPostDao.addBatch(list);
			}
		}
	}

	@Override
	public String checkUsercodeUnique(SysUser user) {
		Long userId = StringUtils.isNull(user.getUserId()) ? -1L : user.getUserId();
		SysUser info = userDao.checkUsercodeUnique(user);
		if (StringUtils.isNotNull(info) && info.getUserId().longValue() != userId.longValue()) {
			return UserConstants.USER_CODE_NOT_UNIQUE;
		}
		return UserConstants.USER_CODE_UNIQUE;
	}

	@Override
	public String checkIdcardnoUnique(SysUser user) {
		Long userId = StringUtils.isNull(user.getUserId()) ? -1L : user.getUserId();
		SysUser info = userDao.checkIdcardnoUnique(user);
		if (StringUtils.isNotNull(info) && info.getUserId().longValue() != userId.longValue()) {
			return UserConstants.USER_IDCARDNO_NOT_UNIQUE;
		}
		return UserConstants.USER_IDCARDNO_UNIQUE;
	}

	@Override
	public List<Ztree> treeData(Integer userType) {
		List<SysDept> deptList = deptDao.list(new SysDept());
		SysUser user = new SysUser();
		user.setUserType(userType);
		List<SysUser> userList = userDao.list(user);
		return initZtree(deptList, userList);
	}

	public List<Ztree> initZtree(List<SysDept> deptList, List<SysUser> userList) {
		List<Ztree> ztrees = new ArrayList<Ztree>();
		for (SysDept dept : deptList) {
			Ztree ztree = new Ztree();
			ztree.setId(dept.getDeptId());
			ztree.setpId(dept.getParentId());
			ztree.setName(dept.getDeptName());
			ztree.setTitle(dept.getDeptName());
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("type", "DEPT");
			ztree.setAttr(map);
			ztrees.add(ztree);
		}
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("type", "USER");
		for (SysUser user : userList) {
			Ztree ztree = new Ztree();
			ztree.setId(user.getUserId());
			ztree.setpId(user.getDeptId());
			ztree.setName(user.getUserName());
			ztree.setTitle(user.getUserName());
			ztree.setAttr(map2);
			ztrees.add(ztree);
		}
		return ztrees;
	}

	@Override
	public List<SysUser> selectUserByRoleId(Long roleId) {
		return userDao.selectUserByRoleId(roleId);
	}

	@Override
	public int updateUserName(SysUser user) {
		return userDao.updateUserName(user);
	}

	@Override
	public int updatePhonenumber(SysUser user) {
		return userDao.updatePhonenumber(user);
	}

	@Override
	public int updateEmail(SysUser user) {
		return userDao.updateEmail(user);
	}

	@Override
	public float getBalance(Long userId) {
		return userDao.getBalance(userId);
	}

	@Override
	public int updateBalance(Long userId,float balance) {
		Map<String, Object> map = new HashMap<>();
		map.put("userId", userId);
		map.put("balance", balance);
		return userDao.updateBalance(map);
	}

	@Override
	public int updateRz(SysUser user) {
		return userDao.updateRz(user);
	}

	@Override
	public int getRz(Long userId) {
		return userDao.getRz(userId);
	}

}
