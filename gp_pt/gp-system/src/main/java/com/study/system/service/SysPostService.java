package com.study.system.service;

import java.util.List;

import com.study.common.core.base.BaseService;
import com.study.system.entity.SysPost;

public interface SysPostService extends BaseService<SysPost> {

	List<SysPost> selectPostsByUserId(Long userId);

	String checkPostCodeUnique(SysPost post);

	int countUserPostById(Long postId);

}
