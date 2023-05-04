package com.study.system.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.study.common.core.base.BaseDao;
import com.study.system.entity.SysDept;

public interface SysDeptDao extends BaseDao<SysDept>{

    /**
     * 查询该部分下面有多少人
     * @param dept
     * @return
     */
    int checkDeptExistUser(SysDept dept);
    
    
    
    /**
     * 修改子元素关系
     * 
     * @param depts 子元素
     * @return 结果
     */
    int updateDeptChildren(@Param("depts") List<SysDept> depts);
    
    
    /**
     * 根据角色ID查询部门
     *
     * @param roleId 角色ID
     * @return 部门列表
     */
    List<String> selectRoleDeptTree(Long roleId);
    
  
    /**
     * 修改所在部门的父级部门状态
     * 
     * @param dept 部门
     */
    void updateDeptStatus(SysDept dept);

    
    /**
     * 根据ID查询所有子部门
     * @param deptId 部门ID
     * @return 部门列表
     */
    List<SysDept> selectChildrenDeptById(Long deptId);
    
    int selectDeptCount(SysDept dept);
    
}
