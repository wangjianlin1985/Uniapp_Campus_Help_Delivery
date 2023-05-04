package com.study.framework.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@Configuration
//表示通过aop框架暴露该代理对象,AopContext能够访问
@EnableAspectJAutoProxy(exposeProxy = true)
//指定要扫描的Mapper类的包的路径,
// 在这里配置了之后就不用在启动类Application上面或者dao上面再配置了
@MapperScan("com.study.*.dao")
public class ApplicationConfig {

}
