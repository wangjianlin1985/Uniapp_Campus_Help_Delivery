<template>
	<view>
		<vus-layer></vus-layer>
		
		<view class="banner" v-if="main.cover">
			<image class="banner-img" :src="main.cover" ></image>
			<view class="banner-title">{{main.mainTitle}}</view>
		</view> 
		<view class="title margin-top" v-else >{{main.mainTitle}}</view>
		
		<view class="article-meta">
			<text class="article-author">{{main.mainAuthor}}</text>
			<text class="article-text">|</text>
			<text class="article-time">{{main.publishTime}}</text>
		</view>
		<view class="article-content">
			<rich-text :nodes="main.cont" ></rich-text>
		</view>
		
		<view class="cu-list menu sm-border" v-if="main.path ">
			<view class="cu-item"  @tap="downfile(main.path)" >
				<view class="content">
					<view >附件下载</view>
				</view>
			</view>
		</view>
		
	</view>
</template>

<script>
	export default {
		data() {
			return {
				main: {
					
				}
			}
		},
		onLoad(options) {
			this.main.mainId = options.mainId
		},
		created () {
			this.initObject()
		},
		methods: {
			initObject(){
				this.http.get(`/openapi/article/view/${this.main.mainId}`).then((res) => {
					if(res.code != 0) return false
					this.main = res.data
					var cover = this.main.cover
					this.main.cover = this.tool.formatURL(cover)
				})
			},
			downfile(path) {
				var that = this
				uni.downloadFile({
				    url: this.baseURL + path, 
				    success: function (res) {
						var tempfile = res.tempFilePath
				        if (res.statusCode === 200) {
							uni.openDocument({
								filePath:tempfile
							})
				        } else {
							that.vusui.alert('文件打开失败')
						}
				    }
				});
			}
		}
	}
</script>

<style scoped lang="less">
	.banner {
		height: 360rpx;
		overflow: hidden;
		position: relative;
		background-color: #ccc;
	}

	.banner-img {
		width: 100%;
	}
	
	img {
		width: 100%;
		height: auto;
	}

	.banner-title {
		max-height: 84rpx;
		overflow: hidden;
		position: absolute;
		left: 30rpx;
		bottom: 30rpx;
		width: 90%;
		font-size: 32rpx;
		font-weight: 400;
		line-height: 42rpx;
		color: white;
		z-index: 11;
	}

	.article-meta {
		padding: 20rpx 40rpx;
		display: flex;
		flex-direction: row;
		justify-content: flex-start;
		color: gray;
	}

	.article-text {
		font-size: 30rpx;
		line-height: 50rpx;
		margin: 0 20rpx;
	}

	.article-author,.article-time {
		font-size: 30rpx;
		line-height: 50rpx;
	}

	/deep/.article-content {
		padding: 0 30rpx;
		overflow: hidden;
		font-size: 30rpx;
		margin-bottom: 30rpx;
		img {
			width: 100%!important;
			height: auto!important;
		}
	}
	
	.title{
		text-align: center;
		font-weight: 700;
		font-size: large;
	}
</style>
