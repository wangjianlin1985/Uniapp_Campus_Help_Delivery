<!-- 
 * @Name：vusui-app-layer [drawer] 抽屉层
 * @Site：http://www.vusui.com | https://vusui.github.io
 * @Author：林攀
 * @License：MIT
 * @开发日期：2019-12-18
 -->
<template>
	<view class="vus-layer layer-drawer" :style="setLayerStyle">
		<view class="vus-layer-drawer vus-layer-anim" id="scrollHeight" :class="[addAnim,setDrawerClass]">
			<view class="vus-layer-wrapper">
				<view class="vus-layer-scroll" :style="{height:scrollHeight+'px'}">
					<view v-if="options.content" class="vus-layer-content">
						<rich-text :nodes="options.content"></rich-text>
					</view>
					<slot v-else></slot>
				</view>
			</view>
			<view v-if="options.button" class="vus-layer-button" :class="options.buttonAlign">
				<view v-for="(item,index) in button" :key="index" :class="'btns btns-'+index" @click="onclick(index)">{{item}}</view>
			</view>
		</view>
	</view>
</template>

<script>
import Util from '../common/utils.js';
export default {
	name: 'vusDrawer',
	data() {
		return {
			addAnim: '',
			button: [],
			scrollHeight: '',
		}
	},
	computed: {
		options() {
			return this.$vusuiLayer.state.drawer;
		},
		hideAnim() {
			return this.options.hide;
		},
		setLayerStyle() {
			return `z-index:${this.options.zIndex};`;
		},
		setDrawerClass() {
			let styles = '';
			if (this.options.position == 'right') {
			    styles = `vus-layer-drawer-right`;
			} else if (this.options.position == 'bottom') {
			    styles = `vus-layer-drawer-bottom`;
			} else if (this.options.position == 'left') {
			    styles = `vus-layer-drawer-left`;
			} else if (this.options.position == 'top') {
			    styles = `vus-layer-drawer-top`;
			}
			return styles;
		}
	},
	created() {
		this.addAnim = this.options.anim !== -1 ? 'vus-layer-anim-'+this.options.anim : '';
        if (typeof this.options.button === 'string') {
            this.button = [this.options.button];
        } else {
            this.button = this.options.button;
        }
		this.options.time <= 0 || setTimeout(() => {
			Util.cancel(this.options, this.$vusuiLayer);
		}, this.options.time)
	},
	mounted() {
		// 计算scrollHeight高度
		const query = uni.createSelectorQuery().in(this);
		query.select('#scrollHeight').boundingClientRect();
		query.exec(res => {
			if (this.options.button) {
				this.scrollHeight = res[0].height - 47;
			} else {
				this.scrollHeight = res[0].height;
			}
		})
	},
    methods: {
        onclick(index) {
			if (index === 0) {
				Util.yes(this.options, this.$vusuiLayer);
			} else {
				index = index + 1;
				Util.cancel(this.options, this.$vusuiLayer, index);
			}
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
