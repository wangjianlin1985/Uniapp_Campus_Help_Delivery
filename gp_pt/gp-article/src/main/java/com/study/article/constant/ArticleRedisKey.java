package com.study.article.constant;

public class ArticleRedisKey {

	/**
	   *  所有文章分类列表
     */
    public static String ARTCIEL_ITEM_ALL = "article:item_all";
    
    /**
     * 具体的文章信息，后面需要跟mainId
     */
    public static String ARTICLE_MAIN_ID = "article:main_id_";
    
    /**
     * 具体的文章内容，后面需要跟mainId
     */
    public static String ARTICLE_CONTENT_ID = "article:content_id_";
	
}
