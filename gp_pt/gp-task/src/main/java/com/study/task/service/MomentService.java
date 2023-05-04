package com.study.task.service;

import java.util.List;

import com.study.common.core.base.BaseService;
import com.study.task.entity.Moment;
import com.study.task.entity.MomentImage;

public interface MomentService extends BaseService<Moment>{
	
	List<MomentImage> listImage(Long momentId);
	
	int addImageBatch(List<MomentImage> list);

}
