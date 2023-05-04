package com.study.system.service;

import com.study.common.core.base.BaseService;
import com.study.system.entity.SysConfig;

public interface SysConfigService extends BaseService<SysConfig>{

    /**
     * 判断configKey是否唯一
     * @param configKey
     * @return
     */
    String checkConfigKeyUnique(SysConfig config);
    
    /**
     * 走缓存
     * 根据key获取value值
     * @param configKey
     * @return
     */
    String getConfigByKey(String configKey);
    
    /**
     * 跑腿起步价
     * @return
     */
    float getPricePaotuiStart();
    
    /**
     * 跑腿起步距离
     * @return
     */
    float getDistancePaotuStart();
    
    /**
     * 跑腿每公里单价
     * @return
     */
    float getPricePaotuOne();
    
    /**
     * 快递起步价
     * @return
     */
    float getPriceParcelStart();
    
    /**
     * 快递起步重量
     * @return
     */
    float getWeightParcelStart();
    
    /**
     * 快递每千克单价
     * @return
     */
    float getPriceParcelOne();
    
    /**
     * 打印起步价
     * @return
     */
    float getPricePrintStart();
    
    /**
     * 打印单价
     * @return
     */
    float getPricePrintOne();
    
    /**
     * 打印起步张数
     * @return
     */
    float getPagesPrintStart();
    
}
