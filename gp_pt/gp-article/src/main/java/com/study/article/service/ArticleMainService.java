package com.study.article.service;

import com.study.article.entity.ArticleContent;
import com.study.article.entity.ArticleMain;
import com.study.common.core.base.BaseService;

public interface ArticleMainService extends BaseService<ArticleMain>{

	int countByItem(ArticleMain main);
	
	int add(ArticleMain main,ArticleContent content);
	
	int update(ArticleMain main,ArticleContent content);
	
	ArticleMain getByIdRedis(Long mainId);
	
}
