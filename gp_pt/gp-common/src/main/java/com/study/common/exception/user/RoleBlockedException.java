package com.study.common.exception.user;

/**
 *  角色锁定
 */
public class RoleBlockedException extends UserException {
	private static final long serialVersionUID = 1L;

	public RoleBlockedException() {
		super("role.blocked", null);
	}
}
