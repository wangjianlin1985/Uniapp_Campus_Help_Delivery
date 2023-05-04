<template>
	<view>

		<!-- 弹出层组件 -->
		<vus-layer></vus-layer>
		
		
		<view class="content">
				
				<form>
					<view class="cu-form-group">
						<view class="title">发  布  人</view>
						<input  v-model="obj.user.userName"></input>
					</view>
					<view class="cu-form-group">
						<view class="title">订  单  号</view>
						<input  v-model="obj.num"></input>
					</view>
					<view class="cu-form-group">
						<view class="title">取货地点</view>
						<input  v-model="obj.place"></input>
					</view>
					
					<view class="cu-form-group">
						<view class="title">快递单号</view>
						<input  v-model="obj.code"></input>
					</view>
					<view class="cu-form-group">
						<view class="title">备注说明</view>
						<input  v-model="obj.remark"></input>
					</view>
					<view class="cu-form-group">
						<view class="title">发布时间</view>
						<input  v-model="obj.fbsj"></input>
					</view>
					
					<view class="cu-form-group">
						<view class="title">配送地址</view>
						<input  v-model="obj.address.content"></input>
					</view>
					
					<view class="cu-form-group">
						<view class="title">配送电话</view>
						<input  v-model="obj.address.phone"></input>
					</view>
					
					<view class="cu-form-group">
						<view class="title">快递重量</view>
						<input  v-model="obj.weight"></input>
					</view>
					
					<view class="cu-form-group">
						<view class="title">跑腿价格</view>
						<input  v-model="obj.money"></input>
					</view>
				</form>
				
		</view>
		

	</view>
</template>

<script>
	export default {
		data() {
			return {
				obj: {
					user:{},
					pty:{},
					address:{},
					id: ''
				}
			}
		},
		created() {
			// 加载
			this.loadObj()
		},
		onLoad(options) {
			this.obj.id = options.id
		},
		methods: {
			loadObj(){
				this.http.get(`/openapi/parcel/get/${this.obj.id}`).then((res) => {
					if(res.code != 0) {
						this.vusui.alert(res.msg)
						return false
					}
					this.obj = res.data
				})
			}
		}
	}
</script>