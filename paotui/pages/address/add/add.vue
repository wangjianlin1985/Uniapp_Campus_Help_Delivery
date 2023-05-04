<template>
	<view>
		<!-- 弹出层组件 -->
		<vus-layer></vus-layer>
		<form>
			<view class="cu-form-group">
				<view class="title">地址</view>
				<input placeholder="请输入地址" v-model="address.content"></input>
			</view>
			<view class="cu-form-group">
				<view class="title">电话</view>
				<input placeholder="请输入电话" v-model="address.phone"></input>
			</view>
			<view class="grid col-1 padding-sm bg-white margin-top" @tap="add">
				<view class="margin-tb-sm text-center" >
					<button class="cu-btn bg-blue lg" >保存</button>
				</view>
			</view>
		</form>


	</view>
</template>

<script>
	export default {
		data() {
			return {
				address: {}
			}
		},
		created() {
			
		},
		methods: {
			
			// 新增
			add() {
				this.vusui.load(3)
				this.http.post('/openapi/address/add', this.address).then((res) => {
					this.vusui.close("loading");
					if (res.code != 0) {
						this.vusui.alert(res.msg)
						return false
					} else {
						this.vusui.alert('新增成功', {
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