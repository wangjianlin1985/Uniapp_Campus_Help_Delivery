package com.study.common.util;

import java.util.UUID;

/**
 * UUID
 */
public class UUIDUtil {
    
    public static String get32() {
        return UUID.randomUUID().toString().replaceAll("-", "");
    }
    
    public static String get16() {
        return get32().substring(0,16);
    }

}
