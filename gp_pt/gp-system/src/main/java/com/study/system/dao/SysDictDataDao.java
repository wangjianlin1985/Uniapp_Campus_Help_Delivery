package com.study.system.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.study.common.core.base.BaseDao;
import com.study.system.entity.SysDictData;

public interface SysDictDataDao extends BaseDao<SysDictData>{

    /**
     * 通过dictType查询该type下的所有属性值
     * @param dictData
     * @return
     */
    List<SysDictData> listByType(SysDictData dictData);
    
    /**
     * 通过dictType查询该type下的数量
     * @param dictData
     * @return
     */
    int countByType(SysDictData dictData);
    
    /**
     * 根据字典类型和字典键值查询字典数据信息
     * @param dictType
     * @param dictValue
     * @return
     */
    String getDictLabel(@Param("dictType") String dictType, @Param("dictValue") String dictValue);
    
    
    /**
     * 同步修改字典类型
     * 在修改了sys_dict_type里面的dictType值之后同步修改sys_dict_date里面的dictType的值
     * @param oldDictType 旧字典类型
     * @param newDictType 新旧字典类型
     * @return 结果
     */
    int updateDictDataType(@Param("oldDictType") String oldDictType, @Param("newDictType") String newDictType);
    
}
