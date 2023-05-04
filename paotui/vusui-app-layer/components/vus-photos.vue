<!-- 
 * @Name：vusui-app-layer [photos] 图集层
 * @Site：http://www.vusui.com | https://vusui.github.io
 * @Author：林攀
 * @License：MIT
 * @开发日期：2019-12-18
 -->
<template>
	<view class="vus-layer" :style="setLayerStyle">
		<view class="vus-layer-photos vus-layer-anim" :class="addAnim">
			<view class="vus-layer-close" v-if="options.closeBtn">
				<view class="vli-error vus-layer-close-icon" @click="close"></view>
			</view>
			<view v-if="options.title" class="vus-layer-photos-title">{{setContent?options.content[current].title:options.title}}</view>
			<view v-if="options.number&&setContent" class="vus-layer-photos-number">{{current+1}} / {{options.content.length}}</view>
			<view class="vus-layer-photos-content">
				<swiper v-if="setContent" class="vus-layer-photos-swiper" @change="changeImage" :current="current">
					<swiper-item v-for="(item,index) in options.content" :key="index" class="vus-layer-photos-swiper-item">
						<image :src="item.src" mode="widthFix" class="vus-layer-photos-image"></image>
					</swiper-item>
				</swiper>
				<slot v-else></slot>
			</view>
		</view>
	</view>
</template>

<script>
import Util from '../common/utils.js';
export default {
	name: 'vusMsg',
	data() {
		return {
			addAnim: '',
			current: 0,
		}
	},
	computed: {
		options() {
			return this.$vusuiLayer.state.photos;
		},
		hideAnim() {
			return this.options.hide;
		},
		setLayerStyle() {
			return `z-index:${this.options.zIndex};`;
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
		},
		changeImage(e) {
			this.current = e.detail.current;
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
