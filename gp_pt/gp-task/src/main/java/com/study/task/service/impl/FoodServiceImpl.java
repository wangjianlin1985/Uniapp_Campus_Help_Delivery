package com.study.task.service.impl;

import java.util.List;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Service;

import com.study.common.core.base.BaseServiceImpl;
import com.study.task.constant.TaskRedisKey;
import com.study.task.dao.FoodDao;
import com.study.task.entity.Food;
import com.study.task.service.FoodService;

@Service
@SuppressWarnings("unchecked")
public class FoodServiceImpl extends BaseServiceImpl<Food> implements FoodService{

	@Autowired
	private FoodDao dao;
	
	@Override
	public List<Food> listAllRedis() {
		String key = TaskRedisKey.FOOD_ALL;
		ValueOperations<String, Object> operations = redisTemplate.opsForValue();
		Object o = operations.get(key);
		if(null == o){
			synchronized (this) {
				o = operations.get(key);
				if(null == o){
					o = dao.list(new Food());
					operations.set(key,o, 10, TimeUnit.DAYS); 
				}
			}
		}
		return (List<Food>)o;
	}
	
}
