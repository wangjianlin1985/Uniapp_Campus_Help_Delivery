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
import com.study.task.entity.Food;
import com.study.task.service.FoodService;

/**
 * 食物管理
 */
@Controller
@RequestMapping("/task/food")
public class FoodController extends BaseController{
	
	private static String prefix = "task/food";

	@Autowired
	private FoodService foodService;

	@GetMapping()
	public String food() {
		return prefix + "/food";
	}

	@RequestMapping("list")
	@ResponseBody
	public TableDataInfo list(Food food) {
		startPage();
		List<Food> list = foodService.list(food);
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
	 * @param food
	 * @return
	 */
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(@Validated Food food) {
		return toAjax(foodService.addRedis(food, TaskRedisKey.FOOD_ALL));
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
	 * @param foodId
	 * @param mmap
	 * @return
	 */
	@GetMapping("/edit/{foodId}")
	public String edit(@PathVariable("foodId") Long foodId, ModelMap mmap) {
		mmap.addAttribute("food", foodService.getById(foodId));
		return prefix + "/edit";
	}

	/**
	 * 修改保存,修改状态status
	 * 
	 * @param food
	 * @return
	 */
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult updateSave(@Validated Food food) {
		return toAjax(foodService.updateRedis(food,TaskRedisKey.FOOD_ALL));
	}

	/**
	 * 删除
	 */
	@PostMapping("/remove")
	@ResponseBody
	@Transactional
	public AjaxResult remove(String ids) {
		foodService.deleteRedis(TaskRedisKey.FOOD_ALL);
		return toAjax(foodService.deleteByIds(ids));
	}
	

}
