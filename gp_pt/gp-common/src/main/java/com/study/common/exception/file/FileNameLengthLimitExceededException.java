package com.study.common.exception.file;

/**
 * 文件名长度限制
 */
public class FileNameLengthLimitExceededException extends FileException {
	
	private static final long serialVersionUID = 1L;

	public FileNameLengthLimitExceededException(int defaultFileNameLength) {
		super("upload.filename.exceed.length", new Object[] { defaultFileNameLength });
	}
}
