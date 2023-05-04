package com.study.system.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.study.common.constant.UserConstants;
import com.study.common.core.base.BaseServiceImpl;
import com.study.common.core.domain.Ztree;
import com.study.common.exception.BusinessException;
import com.study.common.util.StringUtils;
import com.study.system.constant.SystemConstant;
import com.study.system.constant.SystemRedisKey;
import com.study.system.dao.SysDeptDao;
import com.study.system.entity.SysDept;
import com.study.system.entity.SysRole;
import com.study.system.service.SysConfigService;
import com.study.system.service.SysDeptService;


@Service
public class SysDeptServiceImpl extends BaseServiceImpl<SysDept> implements SysDeptService {

	@Autowired
	private SysDeptDao dao;
	@Autowired
	private SysConfigService configService;
	
	@Override
	public List<SysDept> list(SysDept dept) {
		return dao.list(dept);
	}

	@Override
	public List<Ztree> selectDeptTree(SysDept dept) {
		List<SysDept> deptList = dao.list(dept);
		List<Ztree> ztrees = initZtree(deptList);
		return ztrees;
	}

	@Override
	public List<Ztree> roleDeptTreeData(SysRole role) {
		Long roleId = role.getRoleId();
		List<Ztree> ztrees = new ArrayList<Ztree>();
		List<SysDept> deptList = list(new SysDept());
		if (StringUtils.isNotNull(roleId)) {
			List<String> roleDeptList = dao.selectRoleDeptTree(roleId);
			ztrees = initZtree(deptList, roleDeptList);
		} else {
			ztrees = initZtree(deptList);
		}
		return ztrees;
	}

	@Override
	public boolean checkDeptExistUser(Long deptId) {
		SysDept dept = new SysDept();
		dept.setDeptId(deptId);
		int result = dao.checkDeptExistUser(dept);
		return result > 0;
	}

	@Override
	public int add(SysDept dept) {
		SysDept info = dao.getById(dept.getParentId());
		// 如果父节点不为"正常"状态,则不允许新增子节点
		if (!UserConstants.DEPT_NORMAL.equals(info.getStatus())) {
			throw new BusinessException("部门停用，不允许新增");
		}
		dept.setAncestors(info.getAncestors() + "," + dept.getParentId());
		return dao.add(dept);
	}

	@Override
	@Transactional
	public int update(SysDept dept) {
		SysDept newParentDept = dao.getById(dept.getParentId());
		SysDept oldDept = getById(dept.getDeptId());
		if (StringUtils.isNotNull(newParentDept) && StringUtils.isNotNull(oldDept)) {
			String newAncestors = newParentDept.getAncestors() + "," + newParentDept.getDeptId();
			String oldAncestors = oldDept.getAncestors();
			dept.setAncestors(newAncestors);
			updateDeptChildren(dept.getDeptId(), newAncestors, oldAncestors);
		}
		int result = dao.update(dept);
		if (UserConstants.DEPT_NORMAL.equals(dept.getStatus())) {
			// 如果该部门是启用状态，则启用该部门的所有上级部门
			updateParentDeptStatus(dept);
		}
		return result;
	}

	/**
	 * 修改该部门的父级部门状态
	 * 
	 * @param dept 当前部门
	 */
	private void updateParentDeptStatus(SysDept dept) {
		String updateBy = dept.getUpdateBy();
		dept = dao.getById(dept.getDeptId());
		dept.setUpdateBy(updateBy);
		dao.updateDeptStatus(dept);
	}

	/**
	 * 修改子元素关系
	 * 
	 * @param deptId       被修改的部门ID
	 * @param newAncestors 新的父ID集合
	 * @param oldAncestors 旧的父ID集合
	 */
	public void updateDeptChildren(Long deptId, String newAncestors, String oldAncestors) {
		List<SysDept> children = dao.selectChildrenDeptById(deptId);
		for (SysDept child : children) {
			child.setAncestors(child.getAncestors().replace(oldAncestors, newAncestors));
		}
		if (children.size() > 0) {
			dao.updateDeptChildren(children);
		}
	}

	public List<Ztree> initZtree(List<SysDept> deptList) {
		return initZtree(deptList, null);
	}

	/**
	 * 对象转部门树
	 *
	 * @param deptList     部门列表
	 * @param roleDeptList 角色已存在菜单列表
	 * @return 树结构列表
	 */
	public List<Ztree> initZtree(List<SysDept> deptList, List<String> roleDeptList) {
		List<Ztree> ztrees = new ArrayList<Ztree>();
		boolean isCheck = StringUtils.isNotNull(roleDeptList);
		for (SysDept dept : deptList) {
			if (UserConstants.DEPT_NORMAL.equals(dept.getStatus())) {
				Ztree ztree = new Ztree();
				ztree.setId(dept.getDeptId());
				ztree.setpId(dept.getParentId());
				ztree.setName(dept.getDeptName());
				ztree.setTitle(dept.getDeptName());
				if (isCheck) {
					ztree.setChecked(roleDeptList.contains(dept.getDeptId() + dept.getDeptName()));
				}
				ztrees.add(ztree);
			}
		}
		return ztrees;
	}

	@Override
	public int selectDeptCount(SysDept dept) {
		return dao.selectDeptCount(dept);
	}
	
	
	@Override
	public List<SysDept> listAllCJ() {
		String key = SystemRedisKey.SYSTEM_DEPT_CJ;
		ValueOperations<String, Object> operations = redisTemplate.opsForValue();
		Object o = operations.get(key);
		if(null == o){
			synchronized (this) {
				o = operations.get(key);
				if(null == o){
					Long parentId = Long.valueOf(configService.getConfigByKey(SystemConstant.DEPT_ROOT_CONFIG_KEY_CJ));
					SysDept dept = new SysDept();
					dept.setParentId(parentId);
					o = dao.list(dept);
					operations.set(key,o, 10, TimeUnit.DAYS);
				}
			}
		}
		return (List<SysDept>)o;
	}

	@Override
	public List<SysDept> listAllJS() {
		String key = SystemRedisKey.SYSTEM_DEPT_JS;
		ValueOperations<String, Object> operations = redisTemplate.opsForValue();
		Object o = operations.get(key);
		if(null == o){
			synchronized (this) {
				o = operations.get(key);
				if(null == o){
					Long parentId = Long.valueOf(configService.getConfigByKey(SystemConstant.DEPT_ROOT_CONFIG_KEY_JS));
					SysDept dept = new SysDept();
					dept.setParentId(parentId);
					o = dao.list(dept);
					operations.set(key,o, 10, TimeUnit.DAYS);
				}
			}
		}
		return (List<SysDept>)o;
	}

	@Override
	public List<SysDept> listAllJL() {
		String key = SystemRedisKey.SYSTEM_DEPT_JL;
		ValueOperations<String, Object> operations = redisTemplate.opsForValue();
		Object o = operations.get(key);
		if(null == o){
			synchronized (this) {
				o = operations.get(key);
				if(null == o){
					Long parentId = Long.valueOf(configService.getConfigByKey(SystemConstant.DEPT_ROOT_CONFIG_KEY_JL));
					SysDept dept = new SysDept();
					dept.setParentId(parentId);
					o = dao.list(dept);
					operations.set(key,o, 10, TimeUnit.DAYS);
				}
			}
		}
		return (List<SysDept>)o;
	}
}
