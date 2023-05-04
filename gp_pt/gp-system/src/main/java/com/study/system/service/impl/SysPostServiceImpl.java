package com.study.system.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.common.constant.UserConstants;
import com.study.common.core.base.BaseServiceImpl;
import com.study.common.enums.CommonStatus;
import com.study.common.exception.BusinessException;
import com.study.common.util.StringUtils;
import com.study.system.dao.SysPostDao;
import com.study.system.entity.SysPost;
import com.study.system.service.SysPostService;

@Service
public class SysPostServiceImpl extends BaseServiceImpl<SysPost> implements SysPostService {

	@Autowired
	private SysPostDao dao;

	@Override
	public List<SysPost> selectPostsByUserId(Long userId) {
		List<SysPost> userPosts = dao.selectPostsByUserId(userId);
		List<SysPost> posts = dao.listAll(new SysPost());
		for (SysPost post : posts) {
			for (SysPost userRole : userPosts) {
				if (post.getPostId().longValue() == userRole.getPostId().longValue()) {
					post.setFlag(true);
					break;
				}
			}
		}
		return posts;
	}

	@Override
	public String checkPostCodeUnique(SysPost post) {
		Long postId = StringUtils.isNull(post.getPostId()) ? -1L : post.getPostId();
		SysPost info = dao.checkPostCodeUnique(post);
		if (StringUtils.isNotNull(info) && info.getPostId().longValue() != postId.longValue()) {
			return UserConstants.POST_CODE_NOT_UNIQUE;
		}
		return UserConstants.POST_CODE_UNIQUE;
	}

	@Override
	public int countUserPostById(Long postId) {
		return dao.countUserPostById(postId);
	}

	@Override
	public int deleteBatch(Long[] ids, String deleteBy) {
		for (Long id : ids) {
			if (countUserPostById(id) > 0) {
				SysPost post = dao.getById(id);
				throw new BusinessException(String.format("%1$s已分配,不能删除", post.getPostName()));
			}
		}
		Map<String, Object> map = new HashMap<>();
		map.put("deleteFlag", CommonStatus.DELETED.getCode());
		map.put("deleteBy", deleteBy);
		map.put("array", ids);
		return dao.deleteBatchMapArray(map);
	}

}
