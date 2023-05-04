package com.study.task.dao;

import java.util.List;

import com.study.common.core.base.BaseDao;
import com.study.task.entity.Moment;
import com.study.task.entity.MomentImage;

public interface MomentDao extends BaseDao<Moment> {
	
	List<MomentImage> listImage(Long momentId);
	
	int addImageBatch(List<MomentImage> list);

}
