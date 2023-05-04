<template>
	<view>
		<!-- 弹出层组件 -->
		<vus-layer></vus-layer>
		
		<view class="cu-list menu">
			<view class="cu-item"  @tap="detail(pt.id,pt.status)"   @longpress="cancel(pt.id,pt.status)"  v-for="(pt,index) in taskList" :key="index" >
				<view v-if="pt.status == 1 || pt.status == 2 || pt.status == 3" 
					class="cu-avatar round lg" :style="[{backgroundImage:'url('+pt.pty.avatar+')'}]"></view>
				<view class="content">
					<view  v-if="pt.status == 1 || pt.status == 2 || pt.status == 3"  class="text-grey">{{pt.pty.userName}}</view>
					<view class="text-gray text-sm">
						<view  v-if="pt.status == 0" class="bg-blue cu-tag">待接单</view>
						<view  v-if="pt.status == 1" class="bg-blue cu-tag">已接单</view>
						<view  v-if="pt.status == 2" class="bg-blue cu-tag">配送中</view>
						<view  v-if="pt.status == 3" class="bg-blue cu-tag">已完成</view>
						<view  v-if="pt.status == 4" class="bg-blue cu-tag">已取消</view>
						<text class="text-red  margin-right-xs margin-right"></text>
						{{pt.fbsj}}
					</view>
				</view>
				
				<view class="action">
					<view class="text-grey text-xs">{{pt.weight}}KG</view>
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
				taskList: []
			}
		},
		created () {
			this.listMystart()
		},
		onShow() {
			var pages = getCurrentPages();
			//当前页面的数据
			var currPage = pages[pages.length - 1];  
			var data = currPage.$vm.data
			if(data != null){
				var needReflush = data.needReflush;
				if(needReflush == 1){
					this.listMystart()
					var datax = {
						needReflush : 0
					}
					currPage.$vm.data=datax
				}
			} 
		},
		methods: {
			// 列表
			listMystart () {
				this.http.post('/openapi/parcel/user/list', {
				}).then((res) => {
					if(res.code != 0) return false
					var bList = [];
					if (res.rows) {
						for (var i = 0; i < res.rows.length; i++) {
							var obj = res.rows[i]
							if(obj.pty){
								var avatar = obj.pty.avatar
								obj.pty.avatar = this.tool.formatURL(avatar)
							}
							obj.fbsj = this.tool.formatTime(obj.fbsj)
							bList.push(obj)
						}
					}
					this.taskList = bList
				}) 
			},
			// 详情-未接单看到的是简单版
			detail(id,status){
				if(status == 0|| status == 4){
					uni.navigateTo({
						url: '../detailSimple/detailSimple?id='+id
					})
				} else {
					uni.navigateTo({
						url: '../detailComplex/detailComplex?id='+id
					})
				}
			},
			// 取消
			cancel(id,status){
				if(status == 0){
					var that = this
					this.vusui.confirm('您确定要取消该订单吗？',{
						icon: 2
					}, function() {
						that.vusui.load(3)
						that.http.post('/openapi/parcel/user/cancel/'+id).then((res) => {
							that.vusui.close("loading")
							if(res.code != 0) {
								that.vusui.alert(res.msg)
								return false
							} else {
								that.vusui.alert('操作成功')
								that.listMystart();
							}
						}) 
					})
				} 
			}
		}
	}
</script>
