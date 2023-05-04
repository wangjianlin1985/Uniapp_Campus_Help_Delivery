package com.study.task.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.study.system.entity.SysUser;

import lombok.Data;

@Data
public class Moment implements Serializable {
	
	private static final long serialVersionUID = 1L;

	private Long id;

	/** 发布人 */
	private SysUser user;

	/** 发布时间 */
	private Date time;

	/** 内容 */
	private String content;

	List<MomentImage> imageList;

	private String paths;
}
