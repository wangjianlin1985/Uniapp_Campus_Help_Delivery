package com.study.article.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.study.article.constant.ArticleRedisKey;
import com.study.article.dao.ArticleContentDao;
import com.study.article.dao.ArticleMainDao;
import com.study.article.entity.ArticleContent;
import com.study.article.entity.ArticleMain;
import com.study.article.service.ArticleMainService;
import com.study.common.core.base.BaseServiceImpl;

@Service
public class ArticleMainServiceImpl extends BaseServiceImpl<ArticleMain> implements ArticleMainService{

	@Autowired
	private ArticleMainDao mainDao;
	@Autowired
	private ArticleContentDao contentDao;
	

	@Override
	public int countByItem(ArticleMain main) {
		return mainDao.countByItem(main);
	}

	@Override
	@Transactional
	public int add(ArticleMain main, ArticleContent content) {
		// 添加main信息
		mainDao.add(main);
		// 添加内容信息
		content.setMainId(main.getMainId());
		return contentDao.add(content);
	}

	@Override
	@Transactional
	public int update(ArticleMain main, ArticleContent content) {
		deleteRedis(ArticleRedisKey.ARTICLE_MAIN_ID + main.getMainId());
		deleteRedis(ArticleRedisKey.ARTICLE_CONTENT_ID + main.getMainId());
		// 修改main信息
		mainDao.update(main);
		// 修改内容信息
		return contentDao.update(content);
	}
	
	@Override
	@Transactional
	public int deleteBatch(Long[] ids, String deleteBy) {
		for(Long mainId : ids) {
			deleteRedis(ArticleRedisKey.ARTICLE_MAIN_ID + mainId);
			deleteRedis(ArticleRedisKey.ARTICLE_CONTENT_ID + mainId);
		}
		return super.deleteBatch(ids, deleteBy);
	}

    @Override
    public ArticleMain getByIdRedis(Long mainId) {
        String key = ArticleRedisKey.ARTICLE_MAIN_ID + mainId;
        return super.getByIdRedis(mainId, key);
    }

}
