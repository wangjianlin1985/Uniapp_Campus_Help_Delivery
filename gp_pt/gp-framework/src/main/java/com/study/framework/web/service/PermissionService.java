package com.study.framework.web.service;

import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Service;

import com.study.common.util.PermissionUtils;

/**
 * 给前端界面用到的权限处理
 */
@Service("permission")
public class PermissionService {
    
    public String hasPermi(String permission) {
        return isPermittedOperator(permission) ? "" : "hidden";
    }

    public String hasRole(String role) {
        return hasRoleOperator(role) ? "" : "hidden";
    }

    /**
     * 判断用户是否拥有某个权限
     * 
     * @param permission 权限字符串
     * @return 结果
     */
    private boolean isPermittedOperator(String permission) {
        return SecurityUtils.getSubject().isPermitted(permission);
    }

    /**
     * 判断用户是否拥有某个角色
     * 
     * @param role 角色字符串
     * @return 结果
     */
    public boolean hasRoleOperator(String role) {
        return SecurityUtils.getSubject().hasRole(role);
    }

    /**
     * 返回用户属性值
     *
     * @param property 属性名称
     * @return 用户属性值
     */
    public Object getPrincipalProperty(String property) {
        return PermissionUtils.getPrincipalProperty(property);
    }
}
