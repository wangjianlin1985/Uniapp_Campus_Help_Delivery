package com.study.system.dao;

import com.study.common.core.base.BaseDao;
import com.study.system.entity.SysUserPost;

public interface SysUserPostDao extends BaseDao<SysUserPost>{

	int deleteUserPostByUserId(Long userId);
	int countUserPostById(Long postId);
	
}
