export default {
	/**url格式化，一些资源文件比如图片没有http前缀，自动加上前缀*/
	formatURL: function(url) {
		if (url == null || url == '' || url == 'null') {
			return ''
		}
		if (url.substr(0, 7) == 'http://' || url.substr(0, 8) == 'https://') {} else {
			url = 'http://' + uni.getStorageSync('ip') + ':' + uni.getStorageSync('port') + uni.getStorageSync('appname') + url
		}
		return url;
	},
	
	formatTime: function(time) {
		if(time == null || time == '' || time.length < 19) {
			return time
		}
		return time.substring(5,16)
	},
	
	getAllLeaf: function(data) {
	  const result = []
	  function getLeaf(data) {
	    data.forEach(item => {
	      if (!item.children) {
	        result.push(item)
	      } else {
	        getLeaf(item.children)
	      }
	    })
	  }
	  getLeaf(data)
	  return result
	},
	
	handleTree: function(data, id, parentId, children, rootId) {
	  id = id || 'id'
	  parentId = parentId || 'parentId'
	  children = children || 'children'
	  rootId = rootId || 0
	  // 对源数据深度克隆
	  const cloneData = JSON.parse(JSON.stringify(data))
	  // 循环所有项
	  const treeData = cloneData.filter(father => {
	    // eslint-disable-next-line prefer-const
	    let branchArr = cloneData.filter(child => {
	      // 返回每一项的子级数组
	      return father[id] == child[parentId]
	    })
	    branchArr.length > 0 ? father.children = branchArr : ''
	    // 返回第一层
	    return father[parentId] == rootId
	  })
	  return treeData != '' ? treeData : data
	},

	timeCompare: function(date) {
		if (date) {
			// date = date.substring(0, 19)
			date = date.replace(/-/g, '/') // 必须把日期'-'转为'/'
			var timestamp = new Date(date).getTime()
			return timestamp
		}
	},
	
	getNowTime(date) {
	  var year = date.getFullYear()
	  var month = date.getMonth() + 1
	  month = month >= 10 ? month : '0' + month
	  var day = date.getDate()
	  day = day >= 10 ? day : '0' + day
	  var hour = date.getHours()
	  hour = hour >= 10 ? hour : '0' + hour
	  var minute = date.getMinutes()
	  minute = minute >= 10 ? minute : '0' + minute
	  var second = date.getSeconds()
	  second = second >= 10 ? second : '0' + second
	  return year + '-' + month + '-' + day + ' ' + hour + ':' + minute + ':' + second
	},
	
	// 明天
	loadTomorrowTime(date) {
		date.setTime(date.getTime() + 24 * 60 * 60 * 1000)
		var year = date.getFullYear()
	  var month = date.getMonth() + 1
	  month = month >= 10 ? month : '0' + month
	  var day = date.getDate()
	  day = day >= 10 ? day : '0' + day
	  var hour = date.getHours()
	  hour = hour >= 10 ? hour : '0' + hour
	  var minute = date.getMinutes()
	  minute = minute >= 10 ? minute : '0' + minute
	  var second = date.getSeconds()
	  second = second >= 10 ? second : '0' + second
		return year + '-' + month + '-' + day + ' ' + hour + ':' + minute + ':' + second
	},
	
	getTomorrowTime(date) {
	  var year = date.getFullYear()
	  var month = date.getMonth() + 1
	  month = month >= 10 ? month : '0' + month
	  var day = date.getDate() + 1
	  day = day >= 10 ? day : '0' + day
	  var hour = date.getHours()
	  hour = hour >= 10 ? hour : '0' + hour
	  var minute = date.getMinutes()
	  minute = minute >= 10 ? minute : '0' + minute
	  var second = date.getSeconds()
	  second = second >= 10 ? second : '0' + second
		return year + '-' + month + '-' + day + ' ' + hour + ':' + minute + ':' + second
	},
	
	getNowDate(date) {
	  var year = date.getFullYear()
	  var month = date.getMonth() + 1
	  month = month >= 10 ? month : '0' + month
	  var day = date.getDate()
	  day = day >= 10 ? day : '0' + day
	  return year + '-' + month + '-' + day
	},
	
	getNowYear(date) {
	  var year = date.getFullYear()
	  return year
	},
	
	getNowMonth(date) {
	  var year = date.getFullYear()
	  var month = date.getMonth() + 1
	  month = month >= 10 ? month : '0' + month
	  return year + '-' + month 
	},
	
	// 周几
	getWeekByDate(date) {
	  var now = new Date(Date.parse(date.replace(/-/g, '/')))
	  var weeks = new Array('周日', '周一', '周二', '周三', '周四', '周五', '周六')
	  var week = weeks[now.getDay()]
	  return week
	},
	
	// 周日
	getNextDate(date,day) {  
	  var dd = new Date(date)
	  dd.setDate(dd.getDate() + day)
	  var y = dd.getFullYear()
	  var m = dd.getMonth() + 1 < 10 ? "0" + (dd.getMonth() + 1) : dd.getMonth() + 1
	  var d = dd.getDate() < 10 ? "0" + dd.getDate() : dd.getDate()
	  return y + "-" + m + "-" + d
	}
}
