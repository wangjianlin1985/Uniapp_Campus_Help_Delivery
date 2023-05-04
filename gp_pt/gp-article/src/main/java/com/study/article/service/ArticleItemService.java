package com.study.article.service;

import java.util.List;

import com.study.article.entity.ArticleItem;
import com.study.common.core.base.BaseService;

public interface ArticleItemService extends BaseService<ArticleItem>{

	/**
	 * 所有文章分类，走缓存
	 * @return
	 */
	List<ArticleItem> listAllRedis();
	
}
