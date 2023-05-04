package com.study.system.entity;

import java.util.Date;

import com.study.common.core.domain.BaseEntity;
import com.study.common.enums.OnlineStatus;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 在线用户实体类
 */
@Data
@EqualsAndHashCode(callSuper=false)	
public class SysUserOnline extends BaseEntity {
	
	private static final long serialVersionUID = 1L;

	/** 用户会话id */
	private String sessionId;

	/** 部门名称 */
	private String deptName;

	private Long deptId;
	
	/** 登录名称 */
	private String loginName;
	
	/** 用户姓名 */
	private String userName;
	
	/** 身份证 */
	private String idcardno;
	
	/** 手机号 */
	private String phonenumber;
	
	/** 用户类型 */
	private Integer userType;
	
	/** 学工号 */
	private String userCode;
	
	/** 登录IP地址 */
	private String ipaddr;

	/** 登录地址 */
	private String loginLocation;

	/** 浏览器类型 */
	private String browser;

	/** 操作系统 */
	private String os;

	/** session创建时间 */
	private Date startTimestamp;

	/** session最后访问时间 */
	private Date lastAccessTime;

	/** 超时时间，单位为分钟 */
	private Long expireTime;

	/** 在线状态 */
	private OnlineStatus status = OnlineStatus.on_line;
	
}
