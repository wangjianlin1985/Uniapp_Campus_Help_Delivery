package com.study.common.util;

import javax.servlet.http.HttpServletRequest;

/**
 * 手机代理
 */
public class AgentUtils {

    /**
     * 是否是手机端登录
     * @param request
     * @return
     */
    public static boolean isMobile(HttpServletRequest request) {
        String requestHeader = request.getHeader("user-agent").toLowerCase();
        return requestHeader.indexOf("android")>=0 || requestHeader.indexOf("mac os")>=0;
    }
    
    
}
