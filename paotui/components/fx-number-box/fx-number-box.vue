<template>
	<view class="fx-numbox">
		<view class="fx-numbox__minus" @tap="_calcValue('minus')" @longpress="_longTapCalcValue('minus')" @touchend="_touchend" @touchcancel ="_touchcancel ">
			<view class="icon" :style="{backgroundImage:inputValue > min?'url(../../static/fx-number-box/icon_cancel.png)':'url(../../static/fx-number-box/icon_cancel_invalid.png)'}"></view>
		</view>
		<input class="fx-numbox__value" type="digit" v-model="inputValue" @blur="_onBlur" @input="onInput">
		<view class="fx-numbox__plus" @tap="_calcValue('plus')" @longpress="_longTapCalcValue('plus')" @touchend="_touchend" @touchcancel ="_touchcancel ">
			<view class="icon" :style="{backgroundImage:inputValue < max?'url(../../static/fx-number-box/icon_add.png)':'url(../../static/fx-number-box/icon_add-invalid.png)'}"></view>
		</view>
	</view>
</template>
<script>
	window.addEventListener("centextmenu",(e)=>{
		e.preventDefault()
	})
	var timer = null;
	export default {
		name: 'fx-number-box',
		props: {
			value: {
				type: Number,
				default: 0
			},
			min: {
				type: Number,
				default: 0
			},
			max: {
				type: Number,
				default: 999
			},
			step: {
				type: Number,
				default: 1
			}
		},
		data() {
			return {
				inputValue: 0
			}
		},
		watch: {
			value(val) {
				this.inputValue = +val;
			}
		},
		methods: {
			_calcValue(type) {
				const scale = this._getDecimalScale();
				let value = this.inputValue * scale
				let step = this.step * scale
				if (type === 'minus') {
					value -= step
					if (value < this.min) {
						value = this.min
					}
				} else if (type === 'plus') {
					value += step
					if (value > this.max) {
						value = this.max
					}
				}
				this.inputValue = Math.floor((value/scale).toFixed(1)*10)/10;
				this.$emit('change', this.inputValue);
			},
			onInput(e){
				this.inputValue = Math.floor(Number(e.detail.value).toFixed(1)*10)/10;
				this.$emit('change', this.inputValue);
			},
			_longTapCalcValue(type) {
				var _this = this;
				timer = setInterval(function(){
					const scale = _this._getDecimalScale()
					let value = _this.inputValue * scale
					let step = _this.step * scale
					if (type === 'minus') {
						value -= step
						if (value < _this.min) {
							value = _this.min;
							clearInterval(timer)
							return false
						}
					} else if (type === 'plus') {
						value += step
						if (value > _this.max) {
							value = _this.max
							clearInterval(timer)
							return false
						}
					}
					_this.inputValue = Math.floor((value/scale).toFixed(1)*10)/10;
					_this.$emit('change', _this.inputValue);
				},150)
			},
			_touchend(){
				clearInterval(timer)
			},
			_touchcancel(){
				clearInterval(timer)
			},
			_getDecimalScale() {
				let scale = 1
				// 浮点型
				if (~~this.step !== this.step) {
					scale = Math.pow(10, (this.step + '').split('.')[1].length)
				}
				return scale
			},
			_onBlur(event) {
				let value = event.detail.value
				if (!value) {
					this.inputValue = 0
					return
				}
				value = +value;
				if (value > this.max) {
					value = this.max
				} else if (value < this.min) {
					value = this.min
				}
				this.inputValue = value
			}
		},
		created() {
			this.inputValue = +this.value;
		}
	}
</script>
<style lang="scss">
	.fx-numbox {
		display: inline-flex;
		flex-direction: row;
		justify-content: flex-start;
		height:60rpx;
		position: relative;
		&__minus,
		&__plus {
			margin: 0;
			width:60rpx;
			height: 60rpx;
			display: flex;
			justify-content: center;
			align-items: center;
			.icon{
				width: 40rpx;
				height: 40rpx;
				background-position: center center;
				background-repeat: no-repeat;
				background-size: cover;
				pointer-events: none;
			}
		}

		&__value {
			width: 100rpx;
			height:60rpx;
			text-align: center;
			padding: 0;
		}
	}
</style>
