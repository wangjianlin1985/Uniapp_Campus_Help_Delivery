package com.study.task.controller;

import java.util.HashMap;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.study.common.config.Global;
import com.study.common.core.base.BaseController;
import com.study.common.core.domain.AjaxResult;
import com.study.common.core.page.TableDataInfo;
import com.study.common.util.file.FileUploadUtils;
import com.study.task.constant.TaskRedisKey;
import com.study.task.entity.Goods;
import com.study.task.service.GoodsService;

/**
 * 商品管理
 */
@Controller
@RequestMapping("/task/goods")
public class GoodsController extends BaseController{
	
	private static String prefix = "task/goods";

	@Autowired
	private GoodsService goodsService;

	@GetMapping()
	public String goods() {
		return prefix + "/goods";
	}

	@RequestMapping("list")
	@ResponseBody
	public TableDataInfo list(Goods goods) {
		startPage();
		List<Goods> list = goodsService.list(goods);
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
	 * @param goods
	 * @return
	 */
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(@Validated Goods goods) {
		return toAjax(goodsService.addRedis(goods, TaskRedisKey.GOODS_ALL));
	}
	
	
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
	 * 修改
	 * @param goodsId
	 * @param mmap
	 * @return
	 */
	@GetMapping("/edit/{goodsId}")
	public String edit(@PathVariable("goodsId") Long goodsId, ModelMap mmap) {
		mmap.addAttribute("goods", goodsService.getById(goodsId));
		return prefix + "/edit";
	}

	/**
	 * 修改保存
	 * @param goods
	 * @return
	 */
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult updateSave(@Validated Goods goods) {
		return toAjax(goodsService.updateRedis(goods,TaskRedisKey.GOODS_ALL));
	}

	/**
	 * 删除
	 */
	@PostMapping("/remove")
	@ResponseBody
	@Transactional
	public AjaxResult remove(String ids) {
		goodsService.deleteRedis(TaskRedisKey.GOODS_ALL);
		return toAjax(goodsService.deleteByIds(ids));
	}
	

}
