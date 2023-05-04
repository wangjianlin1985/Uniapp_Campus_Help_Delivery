package com.study.common.exception.user;

/**
 *  错误次数过多
 */
public class UserPasswordRetryLimitCountException extends UserException {
	private static final long serialVersionUID = 1L;

	public UserPasswordRetryLimitCountException(int retryLimitCount) {
		super("user.password.retry.limit.count", new Object[] { retryLimitCount });
	}
}
