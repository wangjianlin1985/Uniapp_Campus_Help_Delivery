package com.study.article.controller;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.study.article.constant.ArticleRedisKey;
import com.study.article.entity.ArticleItem;
import com.study.article.service.ArticleItemService;
import com.study.common.core.base.BaseController;
import com.study.common.core.domain.AjaxResult;
import com.study.common.core.page.TableDataInfo;

import cn.hutool.core.convert.Convert;

/**
 * 文章分类管理
 */
@Controller
@RequestMapping("/article/item")
public class ArticleItemController extends BaseController{

	private static String prefix = "article/item";

	@Autowired
	private ArticleItemService itemService;

	@GetMapping()
	public String item() {
		return prefix + "/item";
	}

	@RequestMapping("list")
	@ResponseBody
	public TableDataInfo list(ArticleItem item) {
		startPage();
		List<ArticleItem> list = itemService.list(item);
		return getDataTable(list);
	}

	/**
	 * 新增文章分类
	 */
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
	 * 新增保存
	 * @param item
	 * @return
	 */
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(@Validated ArticleItem item) {
		return toAjax(itemService.addRedis(item, ArticleRedisKey.ARTCIEL_ITEM_ALL));
	}

	/**
	 * 修改
	 * @param itemId
	 * @param mmap
	 * @return
	 */
	@GetMapping("/edit/{itemId}")
	public String edit(@PathVariable("itemId") Long itemId, ModelMap mmap) {
		mmap.addAttribute("item", itemService.getById(itemId));
		return prefix + "/edit";
	}

	/**
	 * 修改保存,修改状态status
	 * 
	 * @param item
	 * @return
	 */
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult updateSave(@Validated ArticleItem item) {
		return toAjax(itemService.updateRedis(item,ArticleRedisKey.ARTCIEL_ITEM_ALL));
	}

	/**
	 * 删除
	 */
	@PostMapping("/remove")
	@ResponseBody
	@Transactional
	public AjaxResult remove(String ids) {
		return toAjax(itemService.deleteBatch(Convert.toLongArray(ids), getLoginName(),ArticleRedisKey.ARTCIEL_ITEM_ALL));
	}
	
	@RequestMapping("data")
	@ResponseBody
	public List<Map<String, Object>> data() {
		List<ArticleItem> list = itemService.listAllRedis();
		List<Map<String, Object>> mapList = new ArrayList<Map<String,Object>>();
		for(ArticleItem g : list) {
			Map<String, Object> map = new LinkedHashMap<>();
			map.put("itemId", g.getItemId());
			map.put("itemName", g.getItemName());
			mapList.add(map);
		}
		return mapList;
	}
	
}
