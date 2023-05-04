package com.study.system.entity;

import com.study.common.core.domain.BaseEntity;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 顶部菜单实体类 
 */
@Data
@EqualsAndHashCode(callSuper=false)
public class SysMenuTop extends BaseEntity {
    
    private static final long serialVersionUID = 1L;

    /** 菜单ID */
    private Long menuId;

    /** 菜单名称 */
    private String menuName;

    /** 显示顺序 */
    private String orderNum;

    /** 打开方式：menuItem页签 menuBlank新窗口 */
    private String target;

    /** 菜单图标 */
    private String icon;

}
