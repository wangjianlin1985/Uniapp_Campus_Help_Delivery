package com.study.web.controller.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.study.common.core.base.BaseController;
import com.study.common.core.domain.AjaxResult;
import com.study.common.core.page.TableDataInfo;
import com.study.common.util.DateUtils;
import com.study.system.entity.SysUser;
import com.study.task.entity.Message;
import com.study.task.service.MessageService;

/**
 * 评论相关API
 */
@RestController
@RequestMapping("openapi/message")
@CrossOrigin
public class MessageApiController extends BaseController{

	@Autowired
	private MessageService messageService;
	

	@RequestMapping("list/{orderId}")
	public TableDataInfo list(@PathVariable Long orderId) {
		List<Message> list = messageService.listByOrderId(orderId);
		return getDataTable(list);
	}
	
	
	@RequestMapping("add")
	public AjaxResult add(@RequestBody Message message) {
		message.setTime(DateUtils.getTime());
		Long userId = getHeaderUserId();
		SysUser user = new SysUser();
		user.setUserId(userId);
		message.setUser(user);
		return toAjax(messageService.add(message));
	}
	
}
