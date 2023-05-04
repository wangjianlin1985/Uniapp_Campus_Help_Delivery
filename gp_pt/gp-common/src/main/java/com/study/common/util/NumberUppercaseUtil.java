package com.study.common.util;
/**
 * 数字转汉字工具
 */
public class NumberUppercaseUtil {
    
    /**
     * 将数字转汉字
     * 比如11转十一，21转二十一
     * @param string
     * @return
     */
    public static String instandOfNum(String string){
        String result = "";
        if(string.length()==1){
            int a = Integer.parseInt(string);
            result= switchNum(a);
        } else if (string.length() == 2) {
            String a = string.substring(0,1);
            String b = string.substring(1);
            result = switchNum(Integer.parseInt(a)) + "十" + switchNum(Integer.parseInt(b));
        }
        if(result.contains("一十")){
            result = result.replace("一十", "十");
        }
        return result;
    }
    
    
    public static String switchNum(int num){
        String result = "";
        switch (num) {
        case 1:
            result = "一";
            break;
        case 2:
            result = "二";
            break;
        case 3:
            result = "三";
            break;
        case 4:
            result = "四";
            break;
        case 5:
            result = "五";
            break;
        case 6:
            result = "六";
            break;
        case 7:
            result = "七";
            break;
        case 8:
            result = "八";
            break;
        case 9:
            result = "九";
            break;
        default:
            break;
        }
        return result;
    }

}
