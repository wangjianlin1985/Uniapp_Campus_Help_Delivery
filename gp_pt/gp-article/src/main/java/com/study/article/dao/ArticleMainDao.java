package com.study.article.dao;

import com.study.article.entity.ArticleMain;
import com.study.common.core.base.BaseDao;

public interface ArticleMainDao extends BaseDao<ArticleMain> {

	int countByItem(ArticleMain main);
	
}
