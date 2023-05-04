package com.study.system.entity;

import lombok.Data;

/**
 * 用户职位绑定
 */
@Data
public class SysUserPost{
    /** 用户ID */
    private Long userId;

    /** 岗位ID */
    private Long postId;
}
