<script>
	import Vue from 'vue'
	export default {
		onLaunch: function() {
			//var token = window.sessionStorage.getItem("token");
			// uni.setStorageSync('appname', '/tms');
			var token = uni.getStorageSync('token');
			if(token == null || token == ''){
				uni.reLaunch({
					url: 'pages/login/login'
				});
			}
			uni.getSystemInfo({
				success: function(e) {
					// #ifndef MP
					Vue.prototype.StatusBar = e.statusBarHeight;
					if (e.platform == 'android') {
						//window.sessionStorage.setItem('fromType', 'ANDROID')
						uni.setStorageSync('fromType', 'ANDROID');
						Vue.prototype.CustomBar = e.statusBarHeight + 50;
					} else {
						//window.sessionStorage.setItem('fromType', 'IOS')
						uni.setStorageSync('fromType', 'IOS');
						Vue.prototype.CustomBar = e.statusBarHeight + 45;
					};
					// #endif

					// #ifdef MP-WEIXIN
					Vue.prototype.StatusBar = e.statusBarHeight;
					let custom = wx.getMenuButtonBoundingClientRect();
					Vue.prototype.Custom = custom;
					Vue.prototype.CustomBar = custom.bottom + custom.top - e.statusBarHeight;
					// #endif		

					// #ifdef MP-ALIPAY
					Vue.prototype.StatusBar = e.statusBarHeight;
					Vue.prototype.CustomBar = e.statusBarHeight + e.titleBarHeight;
					// #endif
				}
			})
		},
		onShow: function() {
			
		},
		onHide: function() {
			
		}
	}
</script>

<style>
	/*每个页面公共css */
	@import "colorui/main.css";
	@import "colorui/icon.css";
	@import "static/css/base.css";
	@import "static/css/iconfont.css";
	@import "vusui-app-layer/theme/default/vusui-layer.css";
</style>
