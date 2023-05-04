package com.study.common.util;

import java.lang.management.ManagementFactory;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.time.DateFormatUtils;

/**
 * 日期工具类
 */
public class DateUtils extends org.apache.commons.lang3.time.DateUtils {
	public static String YYYY = "yyyy";

	public static String YYYY_MM = "yyyy-MM";

	public static String YYYY_MM_DD = "yyyy-MM-dd";

	public static String YYYYMMDDHHMMSS = "yyyyMMddHHmmss";

	public static String YYYY_MM_DD_HH_MM_SS = "yyyy-MM-dd HH:mm:ss";
	
	public static String HH_MM_SS = "HH:mm:ss";
	
	public static String E = "E";

	private static String[] parsePatterns = { "yyyy-MM-dd", "yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd HH:mm", "yyyy-MM",
			"yyyy/MM/dd", "yyyy/MM/dd HH:mm:ss", "yyyy/MM/dd HH:mm", "yyyy/MM", "yyyy.MM.dd", "yyyy.MM.dd HH:mm:ss",
			"yyyy.MM.dd HH:mm", "yyyy.MM","HH:mm:ss" };

	
	private static DateTimeFormatter formatterYYYY_MM_DD = DateTimeFormatter.ofPattern(YYYY_MM_DD);
	
	/**
	 * 获取当前Date型日期
	 * 
	 * @return Date() 当前日期
	 */
	public static Date getNowDate() {
		return new Date();
	}
	
	/**
	 * 获取当天所属星期几
	 * @param date
	 * @return
	 */
	public static String getDayOfWeek(Date date){
        return parseDateToStr(E,date);
    }

	
	/**
	 * 获取与今天相差days天数的日期，
	 * @param days 相差天数，负数表示在今天之前的
	 * @return yyyy-MM-dd格式日期
	 */
	public static String getDay(int days) {
	    return LocalDate.now().plus(days, ChronoUnit.DAYS).format(formatterYYYY_MM_DD);
	}
	
	
	/**
	 * 获取当前日期, 默认格式为yyyy-MM-dd
	 * 
	 * @return String
	 */
	public static String getDate() {
		return dateTimeNow(YYYY_MM_DD);
	}

	/**
	 * 获取当前时间 yyyy-MM-dd HH:mm:ss
	 * @return
	 */
	public static final String getTime() {
		return dateTimeNow(YYYY_MM_DD_HH_MM_SS);
	}

	/**
	 * 获取当前时间yyyyMMddHHmmss
	 * 一般当作流水号处理
	 * @return
	 */
	public static final String dateTimeNow() {
		return dateTimeNow(YYYYMMDDHHMMSS);
	}

	/**
	 * 将当前时间转化成传入的format格式
	 * @param format
	 * @return
	 */
	public static final String dateTimeNow(final String format) {
		return parseDateToStr(format, new Date());
	}

	/**
	 * 获取昨天日期 yyyy-MM-dd
	 * @return
	 */
	public static final String getYesterday() {
	    return parseDateToStr(YYYY_MM_DD, new Date(System.currentTimeMillis() - 24 * 3600 * 1000L));
	}
	
	/**
     * 获取明天日期 yyyy-MM-dd
     * @return
     */
    public static final String getTomorrow() {
        return parseDateToStr(YYYY_MM_DD, new Date(System.currentTimeMillis() + 24 * 3600 * 1000L));
    }
	
	
	/**
	 * 将date日期转化成yyyy-MM-dd字符串
	 * @param date
	 * @return
	 */
	public static final String dateTime(final Date date) {
		return parseDateToStr(YYYY_MM_DD, date);
	}

	/**
	 * 将date日期转化成format格式
	 * @param format string日期格式
	 * @param date date日期
	 * @return
	 */
	public static final String parseDateToStr(final String format, final Date date) {
		return new SimpleDateFormat(format).format(date);
	}

	/**
	 * 将string的时间按照format格式化成date数据
	 * @param format
	 * @param ts
	 * @return
	 */
	public static final Date dateTime(final String format, final String ts) {
		try {
			return new SimpleDateFormat(format).parse(ts);
		} catch (ParseException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 *  获取本月第一天 yyyy-MM-dd
	 * @return
	 */
	public static final String getFirstDayOfMonth() {
	    String d = getDate();
	    return d.substring(0,8) + "01";
	}
	
	/**
     *  获取本月最后一天 yyyy-MM-dd
     * @return
     */
	public static final String getLastDayOfMonth() {
	    Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(new Date());
        calendar2.set(Calendar.DAY_OF_MONTH, calendar2.getActualMaximum(Calendar.DAY_OF_MONTH));
        return dateTime(calendar2.getTime());
	}
	
	/**
	 * 日期路径 即年/月/日 如2018/08/08
	 */
	public static final String datePath() {
		Date now = new Date();
		return DateFormatUtils.format(now, "yyyy/MM/dd");
	}

	/**
	 * 日期路径 即年月日 如20180808
	 */
	public static final String dateTime() {
		Date now = new Date();
		return DateFormatUtils.format(now, "yyyyMMdd");
	}

	/**
	 * 日期型字符串转化为日期 格式
	 */
	public static Date parseDate(Object str) {
		if (str == null) {
			return null;
		}
		try {
			return parseDate(str.toString(), parsePatterns);
		} catch (ParseException e) {
			return null;
		}
	}

	/**
	 * 获取服务器启动时间
	 */
	public static Date getServerStartDate() {
		long time = ManagementFactory.getRuntimeMXBean().getStartTime();
		return new Date(time);
	}

	/**
	 * 计算两个时间差
	 */
	public static String getDatePoor(Date endDate, Date nowDate) {
		long nd = 1000 * 24 * 60 * 60;
		long nh = 1000 * 60 * 60;
		long nm = 1000 * 60;
		// long ns = 1000;
		// 获得两个时间的毫秒时间差异
		long diff = endDate.getTime() - nowDate.getTime();
		// 计算差多少天
		long day = diff / nd;
		// 计算差多少小时
		long hour = diff % nd / nh;
		// 计算差多少分钟
		long min = diff % nd % nh / nm;
		// 计算差多少秒//输出结果
		// long sec = diff % nd % nh % nm / ns;
		return day + "天" + hour + "小时" + min + "分钟";
	}
	
	
	/**
	 * 获取一段时间内的所有的周一的日期
	 * @param start
	 * @param end
	 * @return
	 */
	public static List<Date> getMonday(Date start,Date end){
        List<Date> list = DateUtils.getDateList(start, end);
        List<Date> mondayList = new ArrayList<Date>();
        for(Date date : list){
            String week = getDayOfWeek(date);
            if("星期一".equals(week)){
                mondayList.add(date);
            }
        }
        return mondayList;
    }
	
	
	
	/**
     * 给定开始日期和结束日期，获取中间的日期升序
     * @param start 开始日期
     * @param end 日期
     * @return
     */
    public static List<Date> getDateList(Date start,Date end){ 
        List<Date> list = new ArrayList<Date>(); //保存日期集合
        Date date_start = start;
        Date date_end = end;
        Date date =date_start;
        Calendar cd = Calendar.getInstance();//用Calendar 进行日期比较判断
        while (date.getTime()<=date_end.getTime()){
            list.add(date);
            cd.setTime(date);
            cd.add(Calendar.DATE, 1);//增加一天 放入集合
            date=cd.getTime();
        }
        return list;
    }
    
    
    
    
    /**
     * 给定开始日期和结束日期，获取中间的日期升序
     * @param start 开始日期
     * @param end 日期
     * @return
     */
    public static List<String> getDateList(String start,String end){ 
        SimpleDateFormat sdf = new SimpleDateFormat(YYYY_MM_DD);
        List<String> list = new ArrayList<String>(); //保存日期集合
        try {
            Date date_start = sdf.parse(start);
            Date date_end = sdf.parse(end);
            Date date =date_start;
            Calendar cd = Calendar.getInstance();//用Calendar 进行日期比较判断
            while (date.getTime()<=date_end.getTime()){
                list.add(sdf.format(date));
                cd.setTime(date);
                cd.add(Calendar.DATE, 1);//增加一天 放入集合
                date=cd.getTime();
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return list;
    } 
    
    /**
     * 获取某日期所在周周一日期
     * @param date
     * @return
     */
    public static Date getMondayOfWeek(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        // 获得当前日期是一个星期的第几天
        int dayWeek = cal.get(Calendar.DAY_OF_WEEK);
        if (1 == dayWeek) {
            cal.add(Calendar.DAY_OF_MONTH, -1);
        }
        // 设置一个星期的第一天，按中国的习惯一个星期的第一天是星期一
        cal.setFirstDayOfWeek(Calendar.MONDAY);
        // 获得当前日期是一个星期的第几天
        int day = cal.get(Calendar.DAY_OF_WEEK);
        // 根据日历的规则，给当前日期减去星期几与一个星期第一天的差值
        cal.add(Calendar.DATE, cal.getFirstDayOfWeek() - day);
        return cal.getTime();
    }

    /**
     * 获取本周周一日期
     * @return
     */
    public static Date getMondayOfWeek() {
        return getMondayOfWeek(getNowDate());
    }
    
    
    
}
