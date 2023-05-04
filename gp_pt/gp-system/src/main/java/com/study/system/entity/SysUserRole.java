package com.study.system.entity;

import lombok.Data;

/**
 * 用户角色关联绑定
 */
@Data
public class SysUserRole {
    /** 用户ID */
    private Long userId;

    /** 角色ID */
    private Long roleId;
}
