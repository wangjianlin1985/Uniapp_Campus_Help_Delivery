package com.study.system.service;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.study.common.core.base.BaseService;
import com.study.common.core.domain.Ztree;
import com.study.system.entity.SysMenu;
import com.study.system.entity.SysRole;
import com.study.system.entity.SysUser;

public interface SysMenuService extends BaseService<SysMenu> {
    
    Set<String> selectPermsByUserId(SysUser user);
    
    List<SysMenu> selectMenuAll(Long userId);
    
    List<SysMenu> selectMenusByUser(SysUser user);
    
    List<SysMenu> selectMenuList(SysMenu menu, Long userId);
    
    List<Ztree> roleMenuTreeData(SysRole role, Long userId);
    
    List<Ztree> menuTreeData(Long userId);
    
    Map<String, String> selectPermsAll(Long userId);
    
    int selectCountMenuByParentId(SysMenu menu);
    
    int selectCountRoleMenuByMenuId(Long menuId);
    
    
    
}
