package com.study.article.service;

import com.study.article.entity.ArticleContent;
import com.study.common.core.base.BaseService;

public interface ArticleContentService extends BaseService<ArticleContent>{
 
    /**
     * 通过mainId查询走缓存
     * @param mainId
     * @return
     */
    ArticleContent getByIdRedis(Long mainId);
    
}
