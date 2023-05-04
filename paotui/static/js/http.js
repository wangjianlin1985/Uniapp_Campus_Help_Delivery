import axios from '@/js_sdk/gangdiedao-uni-axios'
// 本地
uni.setStorageSync('ip','192.168.1.8')
uni.setStorageSync('port',8888)
uni.setStorageSync('appname', '/gp');
/**
 * 请求接口日志记录
 */
function _reqlog(req) {
    if (process.env.NODE_ENV === 'development') {
        // console.log("请求地址：" + req.url, req.data || req.params)
    }
    //TODO 调接口异步写入日志数据库
}

/**
 * 响应接口日志记录
 */
function _reslog(res) {
    if (process.env.NODE_ENV === 'development') {
        // console.log(`${res.config.url}响应结果：`, res)
    }
}

// 创建自定义接口服务实例
const http = axios.create({
    timeout: 10000,  // 不可超过 manifest.json 中配置 networkTimeout的超时时间
    // #ifdef H5
    withCredentials: true,
    // #endif
    headers: {
        'Content-Type': 'application/json'
    },
	baseURL: 'http://' + uni.getStorageSync('ip') + ':' + uni.getStorageSync('port') + uni.getStorageSync('appname')
})

// 请求拦截器
http.interceptors.request.use(config => {
	// 请求头添加设备类型、token令牌
	config.headers.fromType = uni.getStorageSync('fromType');//window.sessionStorage.getItem('fromType') 
	if (!config.url.match(RegExp(/loginNocode/)) && !config.url.match(RegExp('getByKey/app_login_bg'))  && !config.url.match(RegExp('tool/version/getLastVersion'))  ) {
	    config.headers.userId = uni.getStorageSync('token');//window.sessionStorage.getItem('token')
	 }
	if(config.url.indexOf('http') < 0){
		config.url = config.baseURL +  config.url
	}
    // _reqlog(config)
    return config
})

// 响应拦截器
http.interceptors.response.use(response => {
    // _reslog(response)
	const res = response.data
    return res
}, error => {
	if(error.message.includes('404')){
		// uni.showModal({
		// 	content: '系统错误，请联系管理员',
		// 	showCancel:false
		// })
		return;
	}
	if(error.message.includes('网络错误')){
		// uni.showModal({
		// 	content: '网络错误，请查看您的网络或者查看设置的IP和端口',
		// 	showCancel:false
		// })
		return;
	}
	if (error.message.includes('timeout')) { // 判断请求异常信息中是否含有超时timeout字符串
		uni.showModal({
			content: '网络超时，请稍候重试',
			showCancel:false
		})
		return;
	}
    return Promise.reject(error.message)
})

export default http