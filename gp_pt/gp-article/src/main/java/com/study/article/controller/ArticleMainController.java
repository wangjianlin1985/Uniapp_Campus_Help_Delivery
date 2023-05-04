package com.study.article.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.study.article.entity.ArticleContent;
import com.study.article.entity.ArticleItem;
import com.study.article.entity.ArticleMain;
import com.study.article.service.ArticleContentService;
import com.study.article.service.ArticleItemService;
import com.study.article.service.ArticleMainService;
import com.study.common.config.Global;
import com.study.common.core.base.BaseController;
import com.study.common.core.domain.AjaxResult;
import com.study.common.core.page.TableDataInfo;
import com.study.common.util.ExcelUtil;
import com.study.common.util.file.FileUploadUtils;

import cn.hutool.core.convert.Convert;

/**
 * 文章信息管理
 */
@Controller
@RequestMapping("/article/main")
public class ArticleMainController extends BaseController{

	private static String prefix = "article/main";

	@Autowired
	private ArticleMainService mainService;
	@Autowired
	private ArticleContentService contentService;
	@Autowired
	private ArticleItemService itemService;
	
	@GetMapping()
	public String main(ModelMap mmap) {
	    List<ArticleItem> itemList = itemService.listAllRedis();
	    mmap.addAttribute("itemList", itemList);
		return prefix + "/main";
	}

	@RequestMapping("list")
	@ResponseBody
	public TableDataInfo list(ArticleMain main) {
		startPage();
		List<ArticleMain> list = mainService.list(main);
		return getDataTable(list);
	}
	
	
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ArticleMain main) {
	    List<ArticleMain> list = mainService.list(main);
	    ExcelUtil<ArticleMain> util = new ExcelUtil<ArticleMain>(ArticleMain.class);
	    return util.exportExcel(list, "文章信息列表");
	}
	

	/**
	 * 新增文章信息
	 */
	@GetMapping("/add")
	public String add(ModelMap mmap) {
		List<ArticleItem> itemList = itemService.listAllRedis();
		mmap.addAttribute("itemList", itemList);
		return prefix + "/add";
	}

	/**
	 * 新增保存
	 * @param main
	 * @return
	 */
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(@Validated ArticleMain main,ArticleContent content) {
		return toAjax(mainService.add(main, content));
	}

	/**
	 * 修改
	 * @param mainId
	 * @param mmap
	 * @return
	 */
	@GetMapping("/edit/{mainId}")
	public String edit(@PathVariable("mainId") Long mainId, ModelMap mmap) {
		List<ArticleItem> itemList = itemService.listAllRedis();
		mmap.addAttribute("itemList", itemList);
		mmap.addAttribute("main", mainService.getById(mainId));
		mmap.addAttribute("content", contentService.getById(mainId));
		return prefix + "/edit";
	}

	/**
	 * 修改保存
	 * 
	 * @param main
	 * @return
	 */
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult updateSave(@Validated ArticleMain main,ArticleContent content) {
		return toAjax(mainService.update(main, content));
	}

	/**
	 * 删除
	 */
	@PostMapping("/remove")
	@ResponseBody
	public AjaxResult remove(String ids) {
		return toAjax(mainService.deleteBatch(Convert.toLongArray(ids), getLoginName()));
	}
	
	
	/**
	 * 上传文章封面图片
	 * @param file
	 * @return
	 */
    @PostMapping("/uploadCover")
    @ResponseBody
    public AjaxResult updateAvatar(@RequestParam("file") MultipartFile file) {
        try {
            if (!file.isEmpty()) {
                String path = FileUploadUtils.upload(Global.getUploadPath(), file);
                Map<String, Object> map = new HashMap<>();
                map.put("path", path);
                return AjaxResult.success(map);
            }
            return error();
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }
	
	/**
	 * 进入文章预览
	 * @param mainId
	 * @param mmap
	 * @return
	 */
	@GetMapping("/content/{mainId}")
	public String content(@PathVariable("mainId") Long mainId, ModelMap mmap) {
		mmap.addAttribute("main", mainService.getById(mainId));
		mmap.addAttribute("content", contentService.getById(mainId));
		return prefix + "/contentView";
	}
}
