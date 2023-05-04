<!-- 
 * @Name：vusui-app-layer [page] 页面层
 * @Site：http://www.vusui.com | https://vusui.github.io
 * @Author：林攀
 * @License：MIT
 * @开发日期：2019-12-18
 -->
<template>
	<view class="vus-layer" :style="setLayerStyle">
		<view class="vus-layer-page vus-layer-anim" :class="[addAnim,{'vus-layer-border':!options.shade}]">
			<view class="vus-layer-title" v-if="options.title">{{options.title}}</view>
			<view class="vus-layer-close" v-if="options.closeBtn">
				<view class="vli-error vus-layer-close-icon" @click="close"></view>
			</view>
			<view class="vus-layer-wrapper">
				<view class="vus-layer-scroll">
					<rich-text v-if="options.content" :nodes="options.content"></rich-text>
					<slot v-else></slot>
				</view>
			</view>
			<view v-if="options.button" class="vus-layer-button" :class="options.buttonAlign">
				<view v-if="index<3" v-for="(item,index) in button" :key="index" :class="'btns btns-'+index" @click="onclick(index)">{{item}}</view>
			</view>
		</view>
	</view>
</template>

<script>
import Util from '../common/utils.js';
export default {
	name: 'vusDialog',
	data() {
		return {
			addAnim: '',
			button: []
		}
	},
	computed: {
		options() {
			return this.$vusuiLayer.state.page;
		},
		hideAnim() {
			return this.options.hide;
		},
		setLayerStyle() {
			return `z-index:${this.options.zIndex};`;
		}
	},
	created() {
		this.addAnim = this.options.anim !== -1 ? 'vus-layer-anim-'+this.options.anim : '';
        if (typeof this.options.button === 'string') {
            this.button = [this.options.button];
        } else {
            this.button = this.options.button;
        }
	},
    methods: {
        onclick(index) {
			if (index === 0) {
				Util.yes(this.options, this.$vusuiLayer);
			} else {
				index = index + 1;
				Util.cancel(this.options, this.$vusuiLayer, index);
			}
        },
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
