package com.study.article.service.impl;

import org.springframework.stereotype.Service;

import com.study.article.constant.ArticleRedisKey;
import com.study.article.entity.ArticleContent;
import com.study.article.service.ArticleContentService;
import com.study.common.core.base.BaseServiceImpl;

@Service
public class ArticleContentServiceImpl extends BaseServiceImpl<ArticleContent> implements ArticleContentService{

    @Override
    public ArticleContent getByIdRedis(Long mainId) {
        String key = ArticleRedisKey.ARTICLE_CONTENT_ID + mainId;
        return super.getByIdRedis(mainId, key);
    }

}
