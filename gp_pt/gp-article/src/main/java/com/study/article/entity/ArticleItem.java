package com.study.article.entity;

import javax.validation.constraints.Size;

import com.study.common.core.domain.BaseEntity;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 文章分类
 */
@Data
@EqualsAndHashCode(callSuper=false)
public class ArticleItem extends BaseEntity{

	private static final long serialVersionUID = 1L;
	
	/** 主键ID */
	private Long itemId;
	
	/** 分类名称 */
	@Size(min = 2,max=32,message="分类名称长度为2-32")
	private String itemName;
	
	/** 排序 */
	private Integer sort;
	
	
}
