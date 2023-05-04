package com.study.system.service;

import java.util.List;

import com.study.common.core.base.BaseService;
import com.study.common.core.domain.Ztree;
import com.study.system.entity.SysDept;
import com.study.system.entity.SysRole;

public interface SysDeptService extends BaseService<SysDept>{

    /**
     * 查询部门树
     * @param dept
     * @return
     */
    List<Ztree> selectDeptTree(SysDept dept);
    
    /**
     * 根据角色查询所关联的部门树
     * @param role
     * @return
     */
    List<Ztree> roleDeptTreeData(SysRole role);
    
    /**
     * 判断该部分下是不是有人
     * @param deptId
     * @return
     */
    boolean checkDeptExistUser(Long deptId);
    
    int selectDeptCount(SysDept dept);
    
    /**
     * 查询所有承建单位，走缓存
     * @return
     */
    List<SysDept> listAllCJ();

    /**
     * 查询所有建设单位，走缓存
     * @return
     */
    List<SysDept> listAllJS();

    /**
     * 查询所有监理单位，走缓存
     * @return
     */
    List<SysDept> listAllJL();
    
}
