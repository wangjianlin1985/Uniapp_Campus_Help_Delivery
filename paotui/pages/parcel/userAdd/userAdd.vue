<template>
	<view>

		<!-- 弹出层组件 -->
		<vus-layer></vus-layer>
		
		<view class="content">
				<form>
					
					<view class="cu-form-group">
						<view class="title">配送地址</view>
						<picker @change="pickerAddress" :range="addressList" range-key="content">
							<view class="picker">
								{{obj.address.content}}
							</view>
						</picker>
					</view>
					
					<view class="cu-form-group">
						<view class="title">取货地点</view>
						<input   v-model="obj.place"></input>
					</view>
					
					<view class="cu-form-group">
						<view class="title">快递单号</view>
						<input   v-model="obj.code"></input>
					</view>
					
					<view class="cu-form-group">
						<view class="title">快递重量</view>
						<input   v-model="obj.weight"></input>
					</view>
					
					<view class="cu-form-group">
						<view class="title">备注说明</view>
						<input  v-model="obj.remark"></input>
					</view>
					
					<view class="grid col-1 padding-sm bg-white margin-top" @tap="add">
						<view class="margin-tb-sm text-center" >
							<button class="cu-btn bg-blue lg" >发布</button>
						</view>
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
					address:{}
				},
				addressList:[]
			}
		},
		created() {
			this.loadAddressList()
		},
		onLoad(options) {
			
		},
		methods: {
			// 加载地址
			loadAddressList(){
				this.http.get(`/openapi/address/listByUserId`).then((res) => {
					if(res.code != 0) {
						this.vusui.alert(res.msg)
						return false
					}
					this.addressList = res.rows
					if(this.addressList.length == 0){
						this.vusui.alert("暂未设置地址，请到地址管理中录入")
					}
					this.obj.address = this.addressList[0]
				})
			},
			// 选择类型
			pickerAddress(e) {
				var index = e.detail.value;
				this.obj.address = this.addressList[index]
			},
			
			add(){
				this.vusui.load(3)
				this.http.post(`/openapi/parcel/user/add`,this.obj).then((res) => {
					this.vusui.close("loading");
					if (res.code != 0) {
						this.vusui.alert(res.msg)
						return false
					} else {
						this.vusui.alert('操作成功', {
							yes: function() {
								var pages = getCurrentPages();
								var prevPage = pages[pages.length - 2];
								var data = {
									needReflush: 1
								}
								prevPage.$vm.data = data
								uni.navigateBack();
							}
						})
					}
				})
			}
		}
	}
</script>