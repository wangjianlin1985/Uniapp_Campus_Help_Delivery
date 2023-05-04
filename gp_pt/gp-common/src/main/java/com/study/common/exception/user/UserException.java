package com.study.common.exception.user;

import com.study.common.exception.BaseException;

/**
 *  用户信息异常
 */
public class UserException extends BaseException {
	private static final long serialVersionUID = 1L;

	public UserException(String code, Object[] args) {
		super("user", code, args, null);
	}
}
