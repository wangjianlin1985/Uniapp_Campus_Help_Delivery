<template>
	<view>
		<!-- 弹出层组件 -->
		<vus-layer></vus-layer>
		
		<view class="cu-list menu" :class="['sm-border']">
			<view class="cu-item arrow"   :class="modalName=='move-box-'+ index?'move-cur':''"  
				v-for="(address,index) in addressList" :key="index"
				@touchstart="ListTouchStart" @touchmove="ListTouchMove" @touchend="ListTouchEnd" :data-target="'move-box-' + index">
				<view class="content">
					<view >{{address.content}}</view>
				</view>
				<view class="action">
					<view >{{address.phone}}</view>
				</view>
				<view class="move">
					<view class="bg-blue" @tap.stop="setDef(address.id)" >默认</view>
					<view class="bg-orange" @tap.stop="openUpdate(address.id,address.phone,address.content)" >修改</view>
					<view class="bg-red"    @tap.stop="openDelete(address.id)" >删除</view>
				</view>
			</view>
		</view>
		<view class="uni-fab-box">
			<uni-fab ref="fab" :pattern="pattern"  horizontal="left" vertical="bottom" direction="horizontal" @fabClick="openAdd()" />
		</view>
	</view>
</template>

<script>
	import uniFab from '@/components/uni-fab-add.vue'
	export default {
		components: {
			uniFab
		},
		data() {
			return {
				modalName: null,
				listTouchStart: 0,
				listTouchDirection: null,
				title: '新增',
				pattern: {
					color: '#7A7E83',
					backgroundColor: '#fff',
					selectedColor: '#007AFF',
					buttonColor: '#007AFF'
				},
				addressList: []
			}
		},
		created () {
			this.listMyAddress()
		},
		onShow() {
			var pages = getCurrentPages();
			//当前页面的数据
			var currPage = pages[pages.length - 1];  
			var data = currPage.$vm.data
			if(data != null){
				var needReflush = data.needReflush;
				if(needReflush == 1){
					this.listMyAddress()
					var datax = {
						needReflush : 0
					}
					currPage.$vm.data=datax
				}
			} 
		},
		methods: {
			// 进入新增界面
			openAdd() {
				uni.navigateTo({ 
				   url: 'add/add'
				})
			},
			
			// 我发起的列表
			listMyAddress () {
				this.http.post('/openapi/address/listByUserId').then((res) => {
					if(res.code != 0) return false
					this.addressList = res.rows;
				}) 
			},
			
			// 进入修改界面
			openUpdate(id,phone,content){
				uni.navigateTo({
				    url: 'update/update?id='+id + "&phone="+phone + "&content="+content
				})
			},
			
			// 删除
			openDelete(id){
				var that = this
				this.vusui.confirm('您确定要删除当前记录吗？',{
					icon: 2
				}, function() {
					that.vusui.load(3)
					that.http.post('/openapi/address/delete', {
						id: id
					}).then((res) => {
						that.vusui.close("loading")
						if(res.code != 0) {
							that.vusui.alert(res.msg)
							return false
						} else {
							that.vusui.alert('删除成功')
							that.listMyAddress();
						}
					}) 
				})
			},
			setDef(id){
				var that = this
				this.vusui.confirm('您确定要设置默认吗？',{
					icon: 2
				}, function() {
					that.vusui.load(3)
					that.http.post('/openapi/address/setDefault', {
						id: id
					}).then((res) => {
						that.vusui.close("loading")
						if(res.code != 0) {
							that.vusui.alert(res.msg)
							return false
						} else {
							that.vusui.alert('操作成功')
							that.listMyAddress();
						}
					}) 
				})
			},
			// ListTouch触摸开始
			ListTouchStart(e) {
				this.listTouchStart = e.touches[0].pageX
			},
			// ListTouch计算方向
			ListTouchMove(e) {
				this.listTouchDirection = e.touches[0].pageX - this.listTouchStart > 0 ? 'right' : 'left'
			},
			// ListTouch计算滚动
			ListTouchEnd(e) {
				if (this.listTouchDirection == 'left') {
					this.modalName = e.currentTarget.dataset.target
				} else {
					this.modalName = null
				}
				this.listTouchDirection = null
			}
		}
	}
</script>
