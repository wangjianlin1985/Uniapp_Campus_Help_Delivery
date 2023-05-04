<template>
	<view>
		
		<vus-layer></vus-layer>
		
		<view class="cu-list menu">
			
			<view class="cu-item arrow"  @tap="toUpdateAvatar(userInfo.avatar)"  >
				<view class="content">头像</view>
				<view class="action">
					<view class="cu-avatar round xl" :style="{backgroundImage: 'url(' + userInfo.avatar + ')'}" ></view>
				</view>
			</view>	
			
			<view class="cu-item">
				<view class="content">登录名</view>
				<text >{{userInfo.loginName}}</text>
			</view>
			
			<view class="cu-item">
				<view class="content">身份证</view>
				<text >{{userInfo.idcardno}}</text>
			</view>
			
			
			<view class="cu-item arrow"  @tap="toUpdateUserName(userInfo.userName)"  >
				<view class="content">姓名</view>
				<text >{{userInfo.userName}}</text>
			</view>
			
			<view class="cu-item arrow" @tap="toUpdatePhone(userInfo.phonenumber)"    >
				<view class="content">手机号</view>
				<view >{{userInfo.phonenumber}}</view>
			</view>
			
			<view class="cu-item arrow"  @tap="toUpdateEmail(userInfo.email)" >
				<view class="content">邮箱</view>
				<view >{{userInfo.email}}</view>
			</view>
			
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				userInfo: {
					
				}
				
			}
		},
		created () {
			this.initObject()
		},
		onShow() {
			var pages = getCurrentPages();
			//当前页面的数据
			var currPage = pages[pages.length - 1];  
			var data = currPage.$vm.data
			if(data != null){
				var needReflush = data.needReflush;
				if(needReflush == 1){
					this.initObject()
					var datax = {
						needReflush : 0
					}
					currPage.$vm.data=datax
				}
			} 
		},
		methods: {
			// 初始化个人信息
			initObject(){
				this.http.get('/openapi/system/userinfo').then((res) => {
					if(res.code != 0) return false
					this.userInfo = res.data
					this.userInfo.avatar = this.tool.formatURL(this.userInfo.avatar)
				})
			},
			
			// 修改姓名
			toUpdateUserName(userName){
				uni.navigateTo({
					url: 'updateUserName?userName='+userName
				})
			},
			
			// 进入修改手机页面
			toUpdatePhone(phonenumber) {
				uni.navigateTo({
					url: 'updatePhone?phonenumber='+phonenumber
				})
			},
			// 进入修改邮箱页面
			toUpdateEmail(email) {
				uni.navigateTo({
					url: 'updateEmail?email=' + email
				})
			},
			// 进入修改头像
			toUpdateAvatar(avatar){
				uni.navigateTo({
					url: 'updateAvatar/updateAvatar?avatar=' + avatar
				})
			}
		}
	}
</script>

<style scoped>
	template{
		font-size:xx-large;
	}
</style>
