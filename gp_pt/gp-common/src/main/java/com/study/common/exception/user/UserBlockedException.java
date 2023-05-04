package com.study.common.exception.user;

/**
 * 用户被锁定
 */
public class UserBlockedException extends UserException {
	private static final long serialVersionUID = 1L;

	public UserBlockedException() {
		super("user.blocked", null);
	}
}
