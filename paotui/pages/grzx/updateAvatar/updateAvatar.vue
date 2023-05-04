<template>
	<view>
		<!-- 弹出层组件 -->
		<vus-layer></vus-layer>
		
		<form>
			<view style="text-align: center;" class="margin-top">
				<image :src="avatar" mode="aspectFill"></image>
			</view>
			<view class="grid col-1 padding-sm bg-white margin-top" @tap="chooseAvatar">
				<view class="margin-tb-sm text-center" >
					<button class="cu-btn bg-blue lg" >选择并上传</button>
				</view>
			</view>
		</form>


	</view>
</template>

<script>
	export default {
		data() {
			return {
				avatar: ''
			}
		},
		onLoad(options) {
			var o = options.avatar
			if(o == null || o == 'null'){
				o = ''
			}
			this.avatar = o
		},
		methods: {
			chooseAvatar() {
				var that = this
				uni.chooseImage({
				    count: 1, //默认9
				    sizeType: ['original', 'compressed'], //可以指定是原图还是压缩图，默认二者都有
				    sourceType: ['album','camera'], //从相册选择
				    success: function (res) {
						const tempFilePath = res.tempFilePaths[0];
						uni.uploadFile({
							url: that.baseURL + '/openapi/system/updateAvatar',
							filePath: tempFilePath,
							name: 'file',
							header:{"userId":uni.getStorageSync("token")},
							success: (r) => {
								var avatarRes = JSON.parse(r.data)  // 又包了一层
								if(avatarRes.code != 0){
									that.vusui.alert(avatarRes.msg)
									return false
								} else {
									var newAvatar = avatarRes.data.avatar
									that.avatar = that.tool.formatURL(newAvatar)
									uni.setStorageSync('avatar',newAvatar)
									that.vusui.alert('修改成功', {
										yes: function() {
											var pages = getCurrentPages();
											//上一个页面
											var prevPage = pages[pages.length - 2];
											var data = {
												needReflush: 1
											}
											prevPage.$vm.data = data
											uni.navigateBack();
										}
									})
								}
							}
						});
				    }
				});
			}
		}
	}
</script>