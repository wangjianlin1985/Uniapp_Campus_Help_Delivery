package com.study.system.service;

import java.util.List;

import com.study.common.core.base.BaseService;
import com.study.system.entity.SysDictData;

public interface SysDictDataService extends BaseService<SysDictData>{
    
    
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
    String getDictLabel(String dictType,String dictValue);
    
    
    /**
     * 同步修改字典类型
     * 在修改了sys_dict_type里面的dictType值之后同步修改sys_dict_date里面的dictType的值
     * @param oldDictType 旧字典类型
     * @param newDictType 新旧字典类型
     * @return 结果
     */
    int updateDictDataType(String oldDictType,String newDictType);
    
    
    
}
