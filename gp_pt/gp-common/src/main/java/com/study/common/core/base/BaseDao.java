package com.study.common.core.base;

import java.util.List;
import java.util.Map;

public interface BaseDao<T> {
	
	/**
	 * 通过ID查询
	 * @param id
	 * @return
	 */
	T getById(Long id);
	
	/**
	 * 通过对象查询
	 * @param t
	 * @return
	 */
	T get(T t);
	
	/**
	 * 新增
	 * @param t
	 * @return
	 */
	int add(T t);
	
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
	 * 逻辑删除
	 * @param t
	 * @return
	 */
	int delete(T t);
	
	/**
	 * 批量逻辑删除 这个map里面包含删除人deleteBy
	 * @param map.put("list",xxx);
	 * @return
	 */
	int deleteBatchMapList(Map<String, Object> map);
	
	
	/**
	 * 批量逻辑删除 这个map里面包含删除人deleteBy
	 * @param map.put("array",xxx); 
	 * @return
	 */
	int deleteBatchMapArray(Map<String, Object> map);
	
	
	/**
	 * 批量逻辑删除
	 * @param list
	 * @return
	 */
	int deleteBatchList(List<T> list);
	
	/**
	 * 通过id物理删除
	 * @param id
	 * @return
	 */
	int deleteById(Long id);
	
	/**
	 *  批量通过ID物理删除
	 * @param ids
	 * @return
	 */
	int deleteByIds(long[] ids);
	
	
	/**
	 * 条件查询
	 * @param t
	 * @return
	 */
	List<T> list(T t);
	
	/**
	 * 查询全部
	 * @param t
	 * @return
	 */
	List<T> listAll(T t);
	
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
