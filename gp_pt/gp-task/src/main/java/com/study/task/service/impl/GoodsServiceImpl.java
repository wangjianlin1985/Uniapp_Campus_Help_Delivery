package com.study.task.service.impl;

import java.util.List;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Service;

import com.study.common.core.base.BaseServiceImpl;
import com.study.task.constant.TaskRedisKey;
import com.study.task.dao.GoodsDao;
import com.study.task.entity.Goods;
import com.study.task.service.GoodsService;

@Service
@SuppressWarnings("unchecked")
public class GoodsServiceImpl extends BaseServiceImpl<Goods> implements GoodsService{

	@Autowired
	private GoodsDao dao;
	
	@Override
	public List<Goods> listAllRedis() {
		String key = TaskRedisKey.GOODS_ALL;
		ValueOperations<String, Object> operations = redisTemplate.opsForValue();
		Object o = operations.get(key);
		if(null == o){
			synchronized (this) {
				o = operations.get(key);
				if(null == o){
					o = dao.list(new Goods());
					operations.set(key,o, 10, TimeUnit.DAYS); 
				}
			}
		}
		return (List<Goods>)o;
	}
	
}
