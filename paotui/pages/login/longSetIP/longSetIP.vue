<template>
	<view>
		<vus-layer></vus-layer>
		<form>
			<view class="cu-form-group">
				<view class="title">IP地址</view>
				<input placeholder="请输入服务器IP地址" v-model="ip"></input>
			</view>
			<view class="cu-form-group">
				<view class="title" style="letter-spacing:18upx">端口</view>
				<input placeholder="请输入服务器端口" v-model="port"></input>
			</view>
			<view class="grid col-1 padding-sm bg-white margin-top" @tap="update">
				<view class="margin-tb-sm text-center" >
					<button class="cu-btn bg-blue lg" >保存</button>
				</view>
			</view>
		</form>


	</view>
</template>

<script>
	export default {
		data() {
			return {
				ip: '',
				port: ''
			}
		},
		onLoad(options) {
			var ip = uni.getStorageSync('ip')
			var port = uni.getStorageSync('port')
			if(ip == null){
				ip = ''
			}
			if(port == null){
				port = ''
			}
			this.ip = ip
			this.port = port
		},
		methods: {
			// 修改
			update() {
				// var ipport = this.ip + ':' + this.port
				// var pattIp=/^(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\:([0-9]|[1-9]\d{1,3}|[1-5]\d{4}|6[0-5]{2}[0-3][0-5])$/;
				// if(!pattIp.test(ipport)){
				// 	this.vusui.alert('请输入正确的IP和端口')
				// 	return false;
				// }
				uni.setStorageSync('ip', this.ip)
				uni.setStorageSync('port', this.port)
				
				uni.removeStorageSync('token')
				uni.removeStorageSync('userId')
				uni.removeStorageSync('avatar')
				uni.removeStorageSync('cname')
				uni.removeStorageSync('userType')
				uni.removeStorageSync('phone')
				
				this.vusui.alert('设置成功', {
					yes: function() {
						plus.runtime.restart()
					}
				})
			}
		}
	}
</script>