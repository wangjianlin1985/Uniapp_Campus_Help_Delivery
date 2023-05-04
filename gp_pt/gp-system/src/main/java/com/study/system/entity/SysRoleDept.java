package com.study.system.entity;

import lombok.Data;

/**
 * 角色部门关联
 */
@Data
public class SysRoleDept {
    
    /** 角色ID */
    private Long roleId;
    
    /** 部门ID */
    private Long deptId;
    
}
