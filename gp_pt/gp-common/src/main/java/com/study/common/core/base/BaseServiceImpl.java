package com.study.common.core.base;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.transaction.annotation.Transactional;

import com.study.common.constant.PunctuationConstants;
import com.study.common.enums.CommonStatus;
import com.study.common.util.StringUtils;

@SuppressWarnings({"unchecked","rawtypes"})
public class BaseServiceImpl<T> implements BaseService<T>{
	
	@Autowired
	private BaseDao<T> dao;
	
	public RedisTemplate redisTemplate;
	public RedisTemplate getRedisTemplate() {
		return redisTemplate;
	}
	@Autowired
	public void setRedisTemplate(RedisTemplate redisTemplate) {
		 RedisSerializer stringSerializer = new StringRedisSerializer();
		 redisTemplate.setKeySerializer(stringSerializer);
		 this.redisTemplate = redisTemplate;
	}
	

	@Override
	public T getById(Long id) {
		return dao.getById(id);
	}

	
	@Override
	public T getByIdRedis(Long id, String key) {
		ValueOperations<String, Object> operations = redisTemplate.opsForValue();
		Object o = operations.get(key);
		if(null == o){
			synchronized (this) {
				o = operations.get(key);
				if(null == o){
					o = dao.getById(id);
					operations.set(key,o, 10, TimeUnit.DAYS); 
				}
			}
		}
		return (T)o;
	}

	@Override
	public T get(T t) {
		return dao.get(t);
	}

	@Override
	public T getRedis(T t, String key) {
		ValueOperations<String, Object> operations = redisTemplate.opsForValue();
		Object o = operations.get(key);
		if(null == o){
			synchronized (this) {
				o = operations.get(key);
				if(null == o){
					o = dao.get(t);
					operations.set(key,o, 10, TimeUnit.DAYS); 
				}
			}
		}
		return (T)o;
	}

	@Override
	public int add(T t) {
		return dao.add(t);
	}

	@Override
	public int addBatch(List<T> list) {
		return dao.addBatch(list);
	}

	@Override
	public int update(T t) {
		return dao.update(t);
	}
	
	@Override
	public int delete(T t) {
		return dao.delete(t);
	}

	@Override
	public boolean deleteRedis(String key) {
		return redisTemplate.delete(key);
	}


	@Override
	public int deleteById(Long id) {
		return dao.deleteById(id);
	}

	@Override
	public int deleteByIds(String ids) {
		return dao.deleteByIds(Arrays.stream(ids.split(PunctuationConstants.COMMA)).mapToLong(s -> Long.parseLong(s)).toArray());
	}

	@Override
	public List<T> list(T t) {
		return dao.list(t);
	}

	@Override
	public List<T> listRedis(T t, String key) {
		ValueOperations<String, Object> operations = redisTemplate.opsForValue();
		Object o = operations.get(key);
		if(null == o){
			synchronized (this) {
				o = operations.get(key);
				if(null == o){
					o = dao.list(t);
					operations.set(key,o, 10, TimeUnit.DAYS); 
				}
			}
		}
		return (List<T>)o;
	}

	@Override
    public List<T> listUseableRedis(T t,String key){
	    ValueOperations<String, Object> operations = redisTemplate.opsForValue();
        Object o = operations.get(key);
        if(null == o){
            synchronized (this) {
                o = operations.get(key);
                if(null == o){
                    o = dao.list(t);
                    operations.set(key,o, 10, TimeUnit.DAYS); 
                }
            }
        }
        return (List<T>)o;
    }
	
	
	@Override
	public List<T> listAll(T t) {
		return dao.listAll(t);
	}

	@Override
	public List<T> listMap(Map<String, Object> map) {
		return dao.listMap(map);
	}
    
	@Override
    public int count(T t) {
        return dao.count(t);
    }
    
	@Override
	@Transactional
	public int deleteBatch(List<T> list, String deleteBy) {
		if(StringUtils.isEmpty(deleteBy)) { // 没有删除人，
			return dao.deleteBatchList(list);
		} else {
			Map<String, Object> map = new HashMap<>();
			map.put("deleteFlag", CommonStatus.DELETED.getCode());
			map.put("deleteBy", deleteBy);
			map.put("list", list);
			return dao.deleteBatchMapList(map);
		}
	}
	
	@Override
	@Transactional
	public int deleteBatch(Long[] ids, String deleteBy) {
		Map<String, Object> map = new HashMap<>();
		map.put("deleteFlag", CommonStatus.DELETED.getCode());
		map.put("deleteBy", deleteBy);
		map.put("array", ids);
		return dao.deleteBatchMapArray(map);
	}
	@Override
	public int addRedis(T t, String... keys) {
	    if(StringUtils.isNotEmpty(keys)) {
	        redisTemplate.delete(Arrays.asList(keys));
        }
		return dao.add(t);
	}
	
	@Override
	@Transactional
	public int deleteBatch(List<T> list, String deleteBy, String... keys) {
		if(StringUtils.isNotEmpty(keys)) {
		    redisTemplate.delete(Arrays.asList(keys));
		}
		return deleteBatch(list, deleteBy);
	}
	
	@Override
	@Transactional
	public int deleteBatch(Long[] ids, String deleteBy, String... keys) {
	    if(StringUtils.isNotEmpty(keys)) {
	        redisTemplate.delete(Arrays.asList(keys));
        }
		return deleteBatch(ids, deleteBy);
	}
	
	
    @Override
    public int updateRedis(T t, String... keys) {
        if(StringUtils.isNotEmpty(keys)) {
            redisTemplate.delete(Arrays.asList(keys));
        }
        return dao.update(t);
    }
    
    
    @Override
    public boolean deleteRedisLike(String key) {
        Set<String> keys = redisTemplate.keys(key);
        if(keys.size() > 0) {
            redisTemplate.delete(keys);
        }
        return true;
    }
    
    
    @Override
    public int truncateTable() {
        return dao.truncateTable();
    }
    
    
    @Override
    public List<T> listAllRedis() {
        return new ArrayList<T>();
    }
	

}
