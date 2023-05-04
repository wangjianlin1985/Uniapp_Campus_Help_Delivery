package com.study.web.controller.api;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.study.common.config.Global;
import com.study.common.constant.PunctuationConstants;
import com.study.common.core.base.BaseController;
import com.study.common.core.domain.AjaxResult;
import com.study.common.core.page.TableDataInfo;
import com.study.common.util.StringUtils;
import com.study.common.util.file.FileUploadUtils;
import com.study.task.entity.Moment;
import com.study.task.entity.MomentImage;
import com.study.task.service.MomentService;

import cn.hutool.core.convert.Convert;

/**
 * 朋友圈相关API
 */
@RestController
@RequestMapping("openapi/moment")
@CrossOrigin
public class MomentController extends BaseController{

	@Autowired
	private MomentService momentService;
	
	@RequestMapping("list")
	public TableDataInfo list(@RequestBody(required = false) Moment moment) {
		List<Moment> list = momentService.list(moment);
		for(Moment m : list) {
			m.setImageList(momentService.listImage(m.getId()));
		}
		return getDataTable(list);
	}
	
	
	@Transactional
	@PostMapping("add")
	public AjaxResult add(@RequestBody Moment moment) {
		int r = momentService.add(moment);
		String paths = moment.getPaths();
		if(StringUtils.isNotEmpty(paths)) {
			List<MomentImage> imageList = new ArrayList<>();
			for(String path: paths.split(PunctuationConstants.COMMA)) {
				MomentImage mi = new MomentImage();
				mi.setMomentId(moment.getId());
				mi.setPath(path);
				imageList.add(mi);
			}
			if(imageList.size() > 0) {
				momentService.addImageBatch(imageList);
			}
		}
		return toAjax(r);
	}
	
	
	@PostMapping("delete")
	public AjaxResult delete(@RequestBody Map<String, Object> mapIds) {
		return toAjax(momentService.deleteByIds(Convert.toStr(mapIds.get("ids"))));
	}
	
	
	@PostMapping("updateImage")
	public AjaxResult updateImage(@RequestParam("file") MultipartFile file) throws IOException {
		if (!file.isEmpty()) {
			String path = FileUploadUtils.upload(Global.getUploadPath(), file);
			Map<String, Object> map = new HashMap<>();
			map.put("path", path);
			return AjaxResult.success(map);
		}
		return AjaxResult.error("上传图片异常，请联系管理员");
	}
	
}
