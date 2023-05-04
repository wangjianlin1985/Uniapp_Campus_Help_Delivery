package com.study.system.dao;

import java.util.List;

import com.study.common.core.base.BaseDao;
import com.study.system.entity.SysMenu;
import com.study.system.entity.SysRole;
import com.study.system.entity.SysUser;

public interface SysMenuDao extends BaseDao<SysMenu>{

    /**
     * 根据用户ID查询菜单
     * 
     * @param userId 用户ID
     * @return 菜单列表
     */
    List<SysMenu> listMenuAllByUserId(SysUser user);
    
    
    /**
     * 查询系统正常显示菜单（不含按钮）
     * 
     * @return 菜单列表
     */
    List<SysMenu> selectMenuNormalAll();
    
    
    
    /**
     * 根据用户ID查询菜单
     * 
     * @param userId 用户ID
     * @return 菜单列表
     */
    List<SysMenu> selectMenusByUserId(SysUser user);
    
    
    
    
    /**
     * 根据用户ID查询权限
     * 
     * @param userId 用户ID
     * @return 权限列表
     */
    List<String> selectPermsByUserId(SysUser user);
    
    
    
    /**
     * 根据角色ID查询菜单
     * 
     * @param roleId 角色ID
     * @return 菜单列表
     */
    List<String> selectMenuTree(SysRole role);
    
    
    /**
     * 查询系统菜单列表
     * 
     * @param menu 菜单信息
     * @return 菜单列表
     */
    List<SysMenu> selectMenuListByUserId(SysMenu menu);
    
    
    /**
     * 查询菜单数量
     * 
     * @param parentId 菜单父ID
     * @return 结果
     */
    int selectCountMenuByParentId(SysMenu menu);
    
    
}
