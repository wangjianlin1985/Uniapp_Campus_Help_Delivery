package com.study.web.controller.api;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.study.article.entity.ArticleMain;
import com.study.article.service.ArticleContentService;
import com.study.article.service.ArticleMainService;
import com.study.common.core.base.BaseController;
import com.study.common.core.domain.AjaxResult;
import com.study.common.core.page.TableDataInfo;

/**
 * 公告相关API 
 */
@RestController
@RequestMapping("openapi/article")
@CrossOrigin
public class ArticleApiController extends BaseController{
	
	@Autowired
	private ArticleMainService articleMainService;
	@Autowired
	private ArticleContentService articleContentService;
	
	// 首页公告列表
	@RequestMapping("list")
	public TableDataInfo list(@RequestBody ArticleMain main) {
		startPage();
		main.setSearchTime(new Date());
		List<ArticleMain> list = articleMainService.list(main);
		return getDataTable(list);
	}
	
	// 预览
	@RequestMapping("view/{id}")
	public AjaxResult view(@PathVariable Long id) {
		ArticleMain main = articleMainService.getByIdRedis(id);
		main.setCont(articleContentService.getByIdRedis(id).getContent());
		return AjaxResult.success(main);
	}
	

}
