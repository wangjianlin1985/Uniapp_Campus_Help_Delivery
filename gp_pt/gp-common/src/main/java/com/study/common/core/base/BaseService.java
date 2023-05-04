package com.study.common.core.base;

import java.util.List;
import java.util.Map;

public interface BaseService<T> {

	/**
	 * 通过ID查询
	 * @param id
	 * @return
	 */
	T getById(Long id);
	
	/**
	 * 通过ID和缓存查询
	 * @param id
	 * @param key
	 * @return
	 */
	T getByIdRedis(Long id,String key);
	
	
	/**
	 * 通过对象查询
	 * @param t
	 * @return
	 */
	T get(T t);
	
	/**
	 * 通过缓存查询
	 * @param t
	 * @param key
	 * @return
	 */
	T getRedis(T t,String key);
	
	/**
	 * 新增
	 * @param t
	 * @return
	 */
	int add(T t);
	
	/**
	 * 新增的时候删除缓存
	 * @param t
	 * @param key
	 * @return
	 */
	int addRedis(T t,String... keys);
	
	/**
	 * 批量插入
	 * @param t
	 * @return
	 */
	int addBatch(List<T> list);
	
	/**
	 * 修改
	 * @param t
	 * @return
	 */
	int update(T t);
	
	/**
	 * 更新的同时删除redis
	 * @param t
	 * @param key
	 * @return
	 */
	int updateRedis(T t,String... keys);
	
	/**
	 * 逻辑删除
	 * @param t
	 * @return
	 */
	int delete(T t);
	
	/**
	 * 删除缓存
	 * @param key
	 * @return
	 */
	boolean deleteRedis(String key);
	
	/**
	 * 根据key模糊删除
	 * @param key
	 * @return
	 */
	boolean deleteRedisLike(String key);
	
	/**
	 * 批量删除
	 * @param list 
	 * @param deleteBy 删除人
	 * @return
	 */
	int deleteBatch(List<T> list,String deleteBy);
	
	/**
	 * 批量删除，
	 * @param ids
	 * @param deleteBy
	 * @return
	 */
	int deleteBatch(Long[] ids,String deleteBy);
	
	/**
	 * 批量删除
	 * @param list 
	 * @param deleteBy 删除人
	 * @return
	 */
	int deleteBatch(List<T> list,String deleteBy,String... key);
	
	/**
	 * 批量删除，
	 * @param ids        ids集合
	 * @param deleteBy   删除人
	 * @param key        要删除的缓存key
	 * @return
	 */
	int deleteBatch(Long[] ids,String deleteBy,String... key);
	
	/**
	 * 通过id物理删除
	 * @param id  id
	 * @return
	 */
	int deleteById(Long id);
	
	/**
	 *  批量通过ID物理删除
	 * @param ids
	 * @return
	 */
	int deleteByIds(String ids);
	
	
	/**
	 * 条件查询
	 * @param t
	 * @return
	 */
	List<T> list(T t);
	
	/**
	 * 通过缓存查询list
	 * @param t
	 * @param key
	 * @return
	 */
	List<T> listRedis(T t,String key);
	
	
	/**
     * 通过缓存查询userablelist
     * @param t
     * @param key
     * @return
     */
	List<T> listUseableRedis(T t,String key);
	
	/**
	 * 查询全部
	 * @param t
	 * @return
	 */
	List<T> listAll(T t);
	
	
	/**
	 * 查询全部走缓存
	 */
	List<T> listAllRedis();
	
	/**
	 * 通过map查询全部
	 * @param map
	 * @return
	 */
	List<T> listMap(Map<String, Object> map);
	
	/**
     * 查询数量
     * @param t
     * @return
     */
    int count(T t);
    
    
    /**
     * 清空数据
     * @return
     */
    int truncateTable();
}
