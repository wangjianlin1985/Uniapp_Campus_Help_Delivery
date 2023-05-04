package com.study.system.task;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.study.common.util.DateUtils;
import com.study.common.util.SpringUtils;
import com.study.system.constant.SystemRedisKey;
import com.study.system.entity.SysOperLog;
import com.study.system.service.SysOperLogService;

/**
 * 将redis缓存中的操作日志同步到db中
 */
@SuppressWarnings("all")
@Component("redisTask")
public class AsyncOperLogToDb {
    
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
    
    /**
     * 每3个小时执行一次
     */
    @Scheduled(cron = "0 0 0/3 * * ?")
    public void asyncOperLogFromRedisToMysql() {
        List<SysOperLog> logList = new ArrayList<SysOperLog>();
        // 获取redis的list
        ListOperations<String,List<SysOperLog>> operations = redisTemplate.opsForList();
        if(redisTemplate.hasKey(SystemRedisKey.OPER_LOG_REDISKEY)) {
            // 获取长度，然后一个一个取出来
            long length = operations.size(SystemRedisKey.OPER_LOG_REDISKEY);
            for(long i=0;i<length;i++) {
                logList.addAll(operations.leftPop(SystemRedisKey.OPER_LOG_REDISKEY));
            }
        }
        if(logList.size() > 0) {
            SpringUtils.getBean(SysOperLogService.class).addBatch(logList);
        }

    }
    
}
