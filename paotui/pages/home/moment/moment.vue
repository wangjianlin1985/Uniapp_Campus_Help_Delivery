<template>
	<view>
		<view class="cu-card dynamic no-card" v-for="(obj, index) in momentList" :key="index" >
			<view class="cu-item shadow">
				<view class="cu-list menu-avatar">
					<view class="cu-item">
						<image class="cu-avatar round lg" lazy-load="true" :src='obj.user.avatar'></image>
						<view class="content flex-sub">
							<view>{{obj.user.userName}}</view>
							<view class="text-gray text-sm flex justify-between">{{obj.time}}</view>
						</view>
					</view>
				</view>
				<view class="text-content">{{obj.content}}</view>
				<view class="grid flex-sub padding-lr grid-square" :class="obj.imageSize >= 3 ?'col-3':obj.imageSize == 2?'col-2':'col-1'">
					<view class="bg-img"  :style="{backgroundImage: 'url(' + (il.path) + ')'}"
					 v-for="(il,index) in obj.imageList" :key="index">
					</view>
				</view>
			</view>
			<view class="margin-top"></view>
		</view>
	</view>
</template>

<script>
export default {
		onLoad(options) {
			this.getList()
		},
		onShow() {
			var pages = getCurrentPages();
			//当前页面的数据
			var currPage = pages[pages.length - 1];  
			var data = currPage.$vm.data
			if(data != null){
				var needReflush = data.needReflush;
				if(needReflush == 1){
					this.getList()
					var datax = {
						needReflush : 0
					}
					currPage.$vm.data=datax
				}
			} 
		},
		data() {
			return {
				momentList: []
			}
		},
		onNavigationBarButtonTap(){
			uni.navigateTo({
				url: 'momentAdd/momentAdd'
			})
		},
		methods: {
			getList() {
				var data = {}
				this.http.post('/openapi/moment/list', data).then((res) => {
					if(res.code != 0) return false
					var list = res.rows
					// 将头像avatar 和 图片path的地址url都加上前缀
					for(var i=0; i<list.length; i++){
						var obj = list[i];
						list[i].user.avatar = this.tool.formatURL(obj.user.avatar)
						var imageList = obj.imageList
						if(imageList){
							for(var j=0;j<imageList.length;j++){
								var oj2 = imageList[j]
								imageList[j].path = this.tool.formatURL(oj2.path)
							}
							list[i].imageList = obj.imageList
							list[i].imageSize = imageList.length
						} else {
							list[i].imageSize = 0
						}
						
					}
					this.momentList = list
				}) 
			}
		}
	}
</script>
