<!-- 
 * @Name：vusui-app-layer [mask] 遮罩层
 * @Site：http://www.vusui.com | https://vusui.github.io
 * @Author：林攀
 * @License：MIT
 * @开发日期：2019-12-18
 -->
<template>
	<view class="vus-layer-mask vus-layer-anim" :class="addAnim" :style="setStyle" @click="close"></view>
</template>

<script>
export default {
	name: 'vusMask',
	props: {
		options: {
			type: Object,
			default: () => {
				return {}
			}
		}
	},
	data() {
		return {
			addAnim: ''
		}
	},
	computed: {
		hideAnim() {
			return this.$vusuiLayer.state[this.options.type].hide;
		},
		setStyle() {
			return `z-index:${this.$vusuiLayer.state[this.options.type].zIndex - 1};background-color:rgba(0,0,0,${this.options.shade});`;
		}
	},
	created() {
		this.addAnim = this.options.anim !== -1 ? 'vus-layer-anim-1' : '';
	},
	methods: {
		close() {
			if (this.options.shadeClose) {
				this.closeAnim(this.hideAnim);
			}
		},
		closeAnim(hide) {
			if (this.options.outAnim !== -1) {
				this.options.hide = true;
				this.$vusuiLayer.commit('hideAnim', this.options);
				this.addAnim = hide ? 'vus-layer-anim-close-1' : '';
				setTimeout(() => {
					this.options.hide = false;
					this.$vusuiLayer.commit('close', this.options);
					this.$vusuiLayer.commit('hideAnim', this.options);
				}, 260);
			} else {
				this.options.hide = false;
				this.$vusuiLayer.commit('close', this.options);
				this.$vusuiLayer.commit('hideAnim', this.options);
			}
		}
	},
	watch: {
		hideAnim(newVal) {
			this.closeAnim(newVal);
		}
	}
}
</script>