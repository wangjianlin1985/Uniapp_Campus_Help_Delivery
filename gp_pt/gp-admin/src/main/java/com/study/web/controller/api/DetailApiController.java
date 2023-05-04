package com.study.web.controller.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.study.common.core.base.BaseController;
import com.study.common.core.page.TableDataInfo;
import com.study.task.entity.Detail;
import com.study.task.service.DetailService;

@RestController
@RequestMapping("openapi/detail")
@CrossOrigin
public class DetailApiController extends BaseController{
	
	@Autowired
	private DetailService detailService;
	
	@RequestMapping("list")
	public TableDataInfo list() {
		Long userId = getHeaderUserId();
		Detail detail = new Detail();
		detail.setUserId(userId);
		List<Detail> list = detailService.list(detail);
		return getDataTable(list);
	}

}
