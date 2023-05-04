package com.study.system.entity;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.study.common.annotation.Excel;
import com.study.common.annotation.Excel.Type;
import com.study.common.annotation.Excels;
import com.study.common.core.domain.BaseEntity;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 用户管理实体类
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class SysUser extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /** 用户ID */
    @Excel(name = "用户序号", prompt = "用户编号")
    private Long userId;

    /** 部门ID */
    @Excel(name = "部门编号", type = Type.IMPORT)
    private Long deptId;

    /** 部门父ID */
    private Long parentId;

    /** 角色ID */
    private Long roleId;
    
    /** 登录名称 */
    @Excel(name = "登录名称")
    private String loginName;

    /** 用户名称 */
    @Excel(name = "用户名称")
    private String userName;

    /** 用户邮箱 */
    @Excel(name = "用户邮箱")
    private String email;

    /** 手机号码 */
    @Excel(name = "手机号码")
    private String phonenumber;
    
    /** 学工号 */
    @Excel(name = "学工号")
    private String userCode;
    
    /** 身份证 */
    @Excel(name = "身份证")
    private String idcardno;
    
    /** 用户性别 */
    @Excel(name = "用户性别", readConverterExp = "0=男,1=女,2=未知")
    private String sex;
    
    /** 手机号码 */
    @Excel(name = "注册时间")
    private Date registerTime;

    /** 用户头像 */
    private String avatar;
    
    /** 用户类型  0教师 1学生  2家长 */
    @Excel(name = "用户类型", readConverterExp = "0=教师,1=学生,2=家长")
    private Integer userType;

    /** 密码 */
    private String password;
    
    /** 密码备份 */
    @JsonIgnore
    private String oldpwd;
    
    /** 微信openid */
    private String openid;
    
    /** 盐加密 */
    private String salt;

    /** 帐号状态（0正常 1停用） */
    @Excel(name = "帐号状态", readConverterExp = "0=正常,1=停用")
    private String status;

    /** 最后登陆IP */
    @Excel(name = "最后登陆IP", type = Type.EXPORT)
    private String loginIp;

    /** 最后登陆时间 */
    @Excel(name = "最后登陆时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss", type = Type.EXPORT)
    private Date loginDate;

    /** 部门对象 */
    @Excels({ @Excel(name = "部门名称", targetAttr = "deptName", type = Type.EXPORT),
            @Excel(name = "部门负责人", targetAttr = "leader", type = Type.EXPORT) })

    /** 部门 */
    private SysDept dept;

    /** 角色组 */
    private List<SysRole> roles;

    /** 角色组 */
    private Long[] roleIds;

    /** 岗位组 */
    private Long[] postIds;
    
    /** 次数 */
    private Integer count;
    
    /**金额*/
    private Float balance;
    
    /**认证 0未认证，1通过，2未通过*/
    private Integer rz;

    public boolean isAdmin() {
        return isAdmin(this.userId);
    }

    public static boolean isAdmin(Long userId) {
        return userId != null && 1L == userId;
    }

    public SysDept getDept() {
        if (dept == null) {
            dept = new SysDept();
        }
        return dept;
    }
}
