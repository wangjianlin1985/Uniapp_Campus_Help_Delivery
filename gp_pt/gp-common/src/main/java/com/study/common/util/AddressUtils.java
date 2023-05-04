package com.study.common.util;

import com.study.common.config.Global;
import com.study.common.json.JSON;
import com.study.common.json.JSONObject;

/**
 * 利用淘宝的API接口将IP转为城市地理位置
 */
public class AddressUtils {

	// private static final Logger log =
	// LoggerFactory.getLogger(AddressUtils.class);

	public static final String IP_URL = "http://ip.taobao.com/service/getIpInfo.php";

	public static String getRealAddressByIP(String ip) {
		String address = "未知";

		// 内网不查询
		if (IpUtils.internalIp(ip)) {
			return "内网IP";
		}
		if (Global.isAddressEnabled()) {
			String rspStr = HttpUtils.sendPost(IP_URL, "ip=" + ip);
			if (StringUtils.isEmpty(rspStr)) {
				// log.error("获取地理位置异常 {}", ip);
				return address;
			}
			JSONObject obj;
			try {
				obj = JSON.unmarshal(rspStr, JSONObject.class);
				JSONObject data = obj.getObj("data");
				String region = data.getStr("region");
				String city = data.getStr("city");
				address = region + " " + city;
			} catch (Exception e) {
				// log.error("获取地理位置异常 {}", ip);
			}
		}
		return address;
	}

}
