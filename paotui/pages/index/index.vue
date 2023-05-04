<template>
	<view>
		<vus-layer></vus-layer>
		<view>
			<swiper class="screen-swiper square-dot" :indicator-dots="true" :circular="true" :autoplay="true" interval="5000"
			 duration="500">
				<swiper-item @click="goDetail(obj)" v-for="(obj,index) in bannerList" :key="index">
					<view class="banner-title">{{ obj.mainTitle }}</view>
					<image :id="obj.mainId" :src="obj.cover" mode="aspectFill"></image>
				</swiper-item>
			</swiper>
		</view>

		<!-- 跑腿 -->
		<view class="cu-list grid" :class="['col-5']" v-if="roleId == 117" >
			<view class="cu-item" @tap="toFoodTask()">
				<view class=" cuIcon-same base_fontcolor  bigsize " ></view>
				<text>外卖</text>
			</view>
			<view class="cu-item"  @tap="toGoodsTask()">
				<view class=" cuIcon-shop base_fontcolor bigsize" ></view>
				<text>购物</text>
			</view>
			<view class="cu-item" @tap="toParcelTask()">
				<view class=" cuIcon-deliver base_fontcolor bigsize" ></view>
				<text>快递</text>
			</view>
			
			<view class="cu-item" @tap="toPrintTask()" >
				<view class=" cuIcon-forward base_fontcolor bigsize" ></view>
				<text>打印</text>
			</view>
			
			<view class="cu-item" @tap="toOtherTask()" >
				<view class=" cuIcon-pick base_fontcolor bigsize" ></view>
				<text>其他</text>
			</view>
		</view>

		<!-- 跑腿 -->
		<view class="cu-list menu-avatar" v-if="roleId == 117">
			<view class="cu-item margin-top-min"  @tap="detail(pt.id,pt.type)"   @longpress="jd(pt.id,pt.type)"  v-for="(pt,index) in taskList" :key="index" >
				<view class="cu-avatar round lg" :style="[{backgroundImage:'url('+pt.avatar+')'}]"></view>
				<view class="content">
					<view class="text-grey">{{pt.name}}</view>
					<view class="text-gray text-sm">
						<view  v-if="pt.type == 'kd'" class="bg-blue cu-tag">快递</view>
						<view  v-if="pt.type == 'gw'" class="bg-blue cu-tag">购物</view>
						<view  v-if="pt.type == 'wm'" class="bg-blue cu-tag">外卖</view>
						<view  v-if="pt.type == 'dy'" class="bg-blue cu-tag">打印</view>
						<view  v-if="pt.type == 'qt'" class="bg-blue cu-tag">其他</view>
						<text class="text-red  margin-right-xs margin-right"></text>
						{{pt.fbsj}}
					</view>
					
				</view>
				<view class="action">
					<view  v-if="pt.type == 'kd'" class="text-grey text-xs">{{pt.distance}}KG</view>
					<view v-else class="text-grey text-xs">{{pt.distance}}KM</view>
					<view class="cu-tag round bg-red lg">￥{{pt.moneyPaotui}}</view>
				</view>
			</view>
		</view>
		
		
		<!-- 普通用户 -->
		<view class="cu-list grid" :class="['col-5']" v-if="roleId == 116">
			<view class="cu-item" @tap="toFoodUserAdd()" >
				<view class="cuIcon-same base_fontcolor  bigsize " ></view>
				<text>外卖</text>
			</view>
			<view class="cu-item"  @tap="toGoodsUserAdd()" >
				<view class=" cuIcon-shop base_fontcolor bigsize" ></view>
				<text>商店</text>
			</view>
			<view class="cu-item" @tap="toParcelUserAdd()" >
				<view class=" cuIcon-deliver base_fontcolor bigsize" ></view>
				<text>快递</text>
			</view>
			
			<view class="cu-item"  @tap="toPrintUserAdd()">
				<view class=" cuIcon-forward base_fontcolor bigsize" ></view>
				<text>打印</text>
			</view>
			
			<view class="cu-item" @tap="toOtherUserAdd()">
				<view class=" cuIcon-pick base_fontcolor bigsize" ></view>
				<text>其他</text>
			</view>
		</view>
		

		<view class="cu-list menu" v-if="roleId == 116">
			<view class="cu-item margin-top-min"  @tap="detailUser(pt.id,pt.type,pt.status)"   v-for="(pt,index) in myList" :key="index" >
				<view class="cu-avatar round lg"  v-if="pt.status != 0" :style="[{backgroundImage:'url('+pt.avatar+')'}]"></view>
				<view class="content">
					<view class="text-grey" v-if="pt.status != 0" >{{pt.name}}</view>
					<view class="text-gray text-sm">
						<view  v-if="pt.type == 'kd'" class=" bg-blue cu-tag">快递</view>
						<view  v-if="pt.type == 'gw'" class=" bg-blue cu-tag">购物</view>
						<view  v-if="pt.type == 'wm'" class=" bg-blue cu-tag">外卖</view>
						<view  v-if="pt.type == 'dy'" class=" bg-blue cu-tag">打印</view>
						<view  v-if="pt.type == 'qt'" class=" bg-blue cu-tag">其他</view>
						<text class="text-red   margin-right"></text>
						<text class="bg-red" v-if="pt.status == 1">已接单</text>
						<text class="bg-red" v-if="pt.status == 2">配送中</text>
						<text class="bg-red" v-if="pt.status == 0">待接单</text>
						{{pt.fbsj}}
					</view>
					
				</view>
				<view class="action">
					<view  v-if="pt.type == 'kd'" class="text-grey text-xs">{{pt.distance}}KG</view>
					<view v-else class="text-grey text-xs">
					{{pt.distance}}KM</view>
					<view class="cu-tag round bg-red lg">￥{{pt.money}}</view>
				</view>
			</view>
		</view>
		

	</view>
</template>

<script>
	export default {
		data() {
			return {
				bannerList: [],
				taskList: [],
				myList: [],
				timeout: 5000, // 30s
				timeoutObj: null,
				roleId: uni.getStorageSync('roleId')
			};
		},
		onLoad() {
			this.loadBannerList()
			if(this.roleId == 117){
				this.loadPtTaskList()
			} else {
				this.loadMyTaskList()
			}
			
		},
		onShow() {
			var pages = getCurrentPages();
			//当前页面的数据
			var currPage = pages[pages.length - 1];  
			if(currPage && currPage.$vm){
				var data = currPage.$vm.data
				if(data != null){
					var needReflush = data.needReflush;
					if(needReflush == 1){
						if(this.roleId == 117){
							this.loadPtTaskList()
						} else {
							this.loadMyTaskList()
						}
						var datax = {
							needReflush : 0
						}
						currPage.$vm.data=datax
					}
				} 
			}
		},
		methods: {
			loadBannerList() {
				this.http.post('/openapi/article/list', {
					pageSize: 8,
					pageNo: 1
				}).then((res) => {
					if (res.code != 0) return false
					var bList = [];
					if (res.rows) {
						for (var i = 0; i < res.rows.length; i++) {
							var obj = res.rows[i]
							var cover = obj.cover
							obj.cover = this.tool.formatURL(cover)
							bList.push(obj)
						}
					}
					this.bannerList = bList
				})
			},
			// 待接单任务
			loadPtTaskList(){
				this.http.post('/openapi/system/taskList').then((res) => {
					if (res.code != 0) return false
					var bList = [];
					if (res.rows) {
						for (var i = 0; i < res.rows.length; i++) {
							var obj = res.rows[i]
							var avatar = obj.avatar
							obj.avatar = this.tool.formatURL(avatar)
							obj.fbsj = this.tool.formatTime(obj.fbsj)
							bList.push(obj)
						}
					}
					this.taskList = bList
				})
			},
			// 我发布的未完成的任务
			loadMyTaskList(){
				this.http.post('/openapi/system/myList').then((res) => {
					if (res.code != 0) return false
					var bList = [];
					if (res.rows) {
						for (var i = 0; i < res.rows.length; i++) {
							var obj = res.rows[i]
							var avatar = obj.avatar
							obj.avatar = this.tool.formatURL(avatar)
							obj.fbsj = this.tool.formatTime(obj.fbsj)
							bList.push(obj)
						}
					}
					this.myList = bList
				})
			},
			// 文章详情
			goDetail(e) {
				uni.navigateTo({
					url: '../article/articleDetail/articleDetail?mainId=' + e.mainId
				})
			},
			// 详情 跑腿，-未接单看到的是简单版
			detail(id,type){
				var url;
				if(type == 'wm'){
					url = '../taskfood/detailSimple/detailSimple?id='+id
				} else if(type == 'gw'){
					url = '../taskgoods/detailSimple/detailSimple?id='+id
				} else if(type == 'kd'){
					url = '../parcel/detailSimple/detailSimple?id='+id
				} else if(type == 'qt'){
					url = '../taskother/detailSimple/detailSimple?id='+id
				} else if(type == 'dy'){
					url = '../taskprint/detailSimple/detailSimple?id='+id
				}
				uni.navigateTo({
					url: url
				})
			},
			// 详情 用户，-未接单看到的是简单版，其他是复杂版
			detailUser(id,type,status){
				var url;
				if(type == 'wm'){
					if(status == 0){
						url = '../taskfood/detailSimple/detailSimple?id='+id
					}else {
						url = '../taskfood/detailComplex/detailComplex?id='+id
					}
				} else if(type == 'gw'){
					if(status == 0){
						url = '../taskgoods/detailSimple/detailSimple?id='+id
					}else {
						url = '../taskgoods/detailComplex/detailComplex?id='+id
					}	
				} else if(type == 'kd'){
					if(status == 0){
						url = '../parcel/detailSimple/detailSimple?id='+id
					}else {
						url = '../parcel/detailComplex/detailComplex?id='+id
					}	
				} else if(type == 'qt'){
					if(status == 0){
						url = '../taskother/detailSimple/detailSimple?id='+id
					}else {
						url = '../taskother/detailComplex/detailComplex?id='+id
					}	
				} else if(type == 'dy'){
					if(status == 0){
						url = '../taskprint/detailSimple/detailSimple?id='+id
					}else {
						url = '../taskprint/detailComplex/detailComplex?id='+id
					}	
				}
				uni.navigateTo({
					url: url
				})
			},
			// 接单
			jd(id,type){
				var url;
				if(type == 'wm'){
					url = `/openapi/food/pty/jd/${id}`
				} else if(type == 'gw'){
					url = `/openapi/goods/pty/jd/${id}`
				} else if(type == 'kd'){
					url = `/openapi/parcel/pty/jd/${id}`
				} else if(type == 'qt'){
					url = `/openapi/other/pty/jd/${id}`
				} else if(type == 'dy'){
					url = `/openapi/print/pty/jd/${id}`
				}
				var that = this
				this.vusui.confirm('您确定要接单吗？',{
					icon: 1
				}, function() {
					that.vusui.load(3)
					that.http.post(url).then((res) => {
						that.vusui.close("loading")
						if(res.code != 0) {
							that.vusui.alert(res.msg)
							return false
						} else {
							that.vusui.alert('操作成功')
							that.loadPtTaskList();
						}
					}) 
				})
			},
			
			// 普通用户- 进入外卖添加页面
			toFoodUserAdd(){
				uni.navigateTo({
					url: '../taskfood/userAdd/userAdd'
				})
			},
			// 普通用户- 进入购物添加页面
			toGoodsUserAdd(){
				uni.navigateTo({
					url: '../taskgoods/userAdd/userAdd'
				})
			},
			// 普通用户- 进入快递添加页面
			toParcelUserAdd(){
				uni.navigateTo({
					url: '../parcel/userAdd/userAdd'
				})
			},
			// 普通用户- 进入打印添加页面
			toPrintUserAdd(){
				uni.navigateTo({
					url: '../taskprint/userAdd/userAdd'
				})
			},
			// 普通用户- 进入其他添加页面
			toOtherUserAdd(){
				uni.navigateTo({
					url: '../taskother/userAdd/userAdd'
				})
			},
			
			
			// 跑腿员- 进入外卖所有待接单列表界面
			toFoodTask(){
				uni.navigateTo({
					url: '../taskfood/todoList/todoList'
				})
			},
			
			// 跑腿员- 进入购物所有待接单列表界面
			toGoodsTask(){
				uni.navigateTo({
					url: '../taskgoods/todoList/todoList'
				})
			},
			
			// 跑腿员- 进入快递所有待接单列表界面
			toParcelTask(){
				uni.navigateTo({
					url: '../parcel/todoList/todoList'
				})
			},
			// 跑腿员- 进入打印所有待接单列表界面
			toPrintTask(){
				uni.navigateTo({
					url: '../taskprint/todoList/todoList'
				})
			},
			// 跑腿员- 进入其他所有待接单列表界面
			toOtherTask(){
				uni.navigateTo({
					url: '../taskother/todoList/todoList'
				})
			}
			
		}
	}
</script>

<style scoped lang="less">
	@import '../../common/uni.css';
	.banner {
		height: 360rpx;
		overflow: hidden;
		position: relative;
		background-color: #ccc;
	}

	.banner-img {
		width: 100%;
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

	.uni-media-list-logo {
		width: 180rpx;
		height: 140rpx;
	}

	.uni-media-list-body {
		height: auto;
		justify-content: space-around;
	}

	.uni-media-list-text-top {
		height: 74rpx;
		font-size: 28rpx;
		overflow: hidden;
	}

	.uni-media-list-text-bottom {
		display: flex;
		flex-direction: row;
		justify-content: space-between;
	}
</style>
