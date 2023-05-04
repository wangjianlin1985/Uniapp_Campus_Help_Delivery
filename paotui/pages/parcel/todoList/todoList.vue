<template>
	<view>
		<!-- 弹出层组件 -->
		<vus-layer></vus-layer>
		
		<view class="cu-list menu-avatar">
			<view class="cu-item"  @tap="detail(pt.id)"   @longpress="jd(pt.id)"  v-for="(pt,index) in taskList" :key="index" >
				<view class="cu-avatar round lg" :style="[{backgroundImage:'url('+pt.user.avatar+')'}]"></view>
				<view class="content">
					<view class="text-grey">{{pt.user.userName}}</view>
					<view class="text-gray text-sm">
						{{pt.fbsj}}
					</view>
				</view>
				
				<view class="action">
					<view class="text-grey text-xs">{{pt.distance}}KM</view>
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
			this.listTodo()
		},
		onShow() {
			var pages = getCurrentPages();
			//当前页面的数据
			var currPage = pages[pages.length - 1];  
			var data = currPage.$vm.data
			if(data != null){
				var needReflush = data.needReflush;
				if(needReflush == 1){
					this.listTodo()
					var datax = {
						needReflush : 0
					}
					currPage.$vm.data=datax
				}
			} 
		},
		methods: {
			// 列表
			listTodo () {
				this.http.post('/openapi/parcel/pty/todoList', {
				}).then((res) => {
					if(res.code != 0) return false
					var bList = [];
					if (res.rows) {
						for (var i = 0; i < res.rows.length; i++) {
							var obj = res.rows[i]
							var avatar = obj.user.avatar
							obj.user.avatar = this.tool.formatURL(avatar)
							obj.fbsj = this.tool.formatTime(obj.fbsj)
							bList.push(obj)
						}
					}
					this.taskList = bList
				}) 
			},
			
			// 接单
			jd(id){
				var that = this
				this.vusui.confirm('您确定要接单吗？',{
					icon: 1
				}, function() {
					that.vusui.load(3)
					that.http.post(`/openapi/parcel/pty/jd/${id}`).then((res) => {
						that.vusui.close("loading")
						if(res.code != 0) {
							that.vusui.alert(res.msg)
							return false
						} else {
							that.vusui.alert('操作成功')
							that.listTodo();
						}
					}) 
				})
			},
			
			// 详情-未接单看到的是简单版
			detail(id){
				uni.navigateTo({
					url: '../detailSimple/detailSimple?id='+id
				})
			}
		}
	}
</script>
