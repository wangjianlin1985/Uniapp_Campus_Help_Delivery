package com.study.system.dao;

import java.util.List;

import com.study.common.core.base.BaseDao;
import com.study.system.entity.SysPost;

public interface SysPostDao extends BaseDao<SysPost>{

	List<SysPost> selectPostsByUserId(Long userId);
	
	int countUserPostById(Long postId);
	
	SysPost checkPostCodeUnique(SysPost post);
	
}
