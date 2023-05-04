package com.study.article.entity;

import java.io.Serializable;

import lombok.Data;

/**
 * 文章内容
 */
@Data
public class ArticleContent implements Serializable{
	
	private static final long serialVersionUID = 1L;

	private Long mainId;
	
	private String content;

}
