<template>
	<view>
		<!-- 弹出层组件 -->
		<vus-layer></vus-layer>
		<form>
			<view class="cu-form-group">
				<view class="title">旧密码</view>
				<input placeholder="请输入旧密码" v-model="pwdInfo.oldPwd"></input>
			</view>
			<view class="cu-form-group">
				<view class="title">新密码</view>
				<input placeholder="请输入新密码" v-model="pwdInfo.newPwd"></input>
			</view>
			<view class="cu-form-group">
				<view class="title">确认密码</view>
				<input placeholder="请确认密码"  v-model="pwdInfo.newPwd2"></input>
			</view>
			<view class="grid col-1 padding-sm bg-white margin-top" @tap="update">
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
				pwdInfo:{
					oldPwd: '',
					newPwd: '',
					newPwd2: ''
				}
			}
		},
		methods: {
			// 修改
			update() {
				// /^(?=.*\d)(?=.*[a-zA-Z])(?=.*[~!@#$%^&*()])[\da-zA-Z~!@#$%^&*()]{6,}$/
				let pwdRules = [
					  {name: 'oldPwd', required: true, errmsg: '请输入旧密码'},
					  {name: 'newPwd', type: 'pwd', custom: /^(?=.*\d)(?=.*[a-zA-Z])(?=.*[~!@#$%^&*()])[\da-zA-Z~!@#$%^&*()]{6,}$/, errmsg: '密码必须包含至少1个字母，1个数值，1个特殊符号'},
					  {name: 'newPwd2', type: 'eq', eqName: 'newPwd', required: true, errmsg: '两次输入密码不一致'}
				]
				let valPwdRes = this.validate.validate(this.pwdInfo, pwdRules)
				if (!valPwdRes.isOk) {
					this.vusui.alert(valPwdRes.errmsg)
					return false
				}
				this.vusui.load(3)
				this.http.post('/openapi/system/updatePwd', {
					oldPassword: this.pwdInfo.oldPwd,
					newPassword: this.pwdInfo.newPwd
				}).then((res) => {
					this.vusui.close("loading");
					if (res.code != 0) {
						this.vusui.alert(res.msg)
						return;
					} else {
						this.vusui.alert('修改成功', {
							yes: function() {
								uni.navigateBack();
							}
						})
					}
				})
			}
		}
	}
</script>