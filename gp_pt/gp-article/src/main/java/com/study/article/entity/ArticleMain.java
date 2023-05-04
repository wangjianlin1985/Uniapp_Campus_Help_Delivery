package com.study.article.entity;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.study.common.annotation.Excel;
import com.study.common.core.domain.BaseEntity;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 文章管理
 */
@Data
@EqualsAndHashCode(callSuper=false)
public class ArticleMain extends BaseEntity{

	private static final long serialVersionUID = 1L;
	
	/** 主键ID */
	private Long mainId;
	
	/** 文章标题 */
	@Excel(name = "文章标题")
	private String mainTitle;
	
	/** 文章副标题 */
	@Excel(name = "文章副标题")
	private String mainSubtitle;
	
	/** 文章摘要 */
	private String mainSummary;
	
	/** 文章作者 */
	@Excel(name = "文章作者")
	private String mainAuthor;
	
	/** 文章发表时间 */
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date publishTime;
	
	/** 发布开始时间 */
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date mainStart;
	
	/** 发布结束时间 */
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date mainEnd;
	
	/** 排序 大的在上面 */
	private Integer sort;
	
	/** 是否置顶 */
	private String istop;
	
	/** 所属分类 */
	private ArticleItem item;
	
	/** 封面图片 */
	private String cover;
	

	private String cont;
	
}
