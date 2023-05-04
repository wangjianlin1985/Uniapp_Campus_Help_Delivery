<!-- 
 * @Name：vusui-app-layer [msg] 信息提示层
 * @Site：http://www.vusui.com | https://vusui.github.io
 * @Author：林攀
 * @License：MIT
 * @开发日期：2019-12-18
 -->
<template>
	<view class="vus-layer" :style="setLayerStyle">
		<view class="vus-layer-msg vus-layer-anim" :class="addAnim">
			<view class="vus-layer-close" v-if="options.closeBtn">
				<view class="vli-close" @click="close"></view>
			</view>
			<view class="vus-layer-icon" v-if="options.icon!=-1">
				<view class="icons" :class="setIcon?'vli-icon-'+options.icon[0]:'vli-icon-'+options.icon" :style="setIcon?options.icon[1]:''"></view>
			</view>
			<view class="vus-layer-content" :class="{'is-icon':options.icon!=-1}" :style="setContent?options.content[1]:''">{{setContent?options.content[0]:options.content}}</view>
		</view>
	</view>
</template>

<script>
import Util from '../common/utils.js';
export default {
	name: 'vusMsg',
	data() {
		return {
			addAnim: ''
		}
	},
	computed: {
		options() {
			return this.$vusuiLayer.state.message;
		},
		hideAnim() {
			return this.options.hide;
		},
		setLayerStyle() {
			return `z-index:${this.options.zIndex};`;
		},
		setIcon() {
			return typeof this.options.icon === 'object';
		},
		setContent() {
			return typeof this.options.content === 'object';
		}
	},
	created() {
		this.addAnim = this.options.anim !== -1 ? 'vus-layer-anim-'+this.options.anim : '';
		this.options.time <= 0 || setTimeout(() => {
			this.close();
		}, this.options.time);
	},
    methods: {
		close() {
			Util.cancel(this.options, this.$vusuiLayer);
		}
    },
	watch: {
		hideAnim(newVal) {
			if (this.options.outAnim !== -1 && newVal) {
				this.addAnim = 'vus-layer-anim-close-'+this.options.outAnim;
			}
		}
	}
}
</script>

<style></style>
