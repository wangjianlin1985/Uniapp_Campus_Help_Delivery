<!-- 
 * @Name：vusui-app-layer [dialog] 提示框
 * @Site：http://www.vusui.com | https://vusui.github.io
 * @Author：林攀
 * @License：MIT
 * @开发日期：2019-12-18
 -->
<template>
	<view class="vus-layer" :style="setLayerStyle">
		<view class="vus-layer-alert vus-layer-anim" :class="[addAnim,{'vus-layer-border':!options.shade}]">
			<view class="vus-layer-title" v-if="options.title">{{options.title}}</view>
			<view class="vus-layer-icon" :class="{'is-title':options.title}" v-if="options.icon!=-1">
				<view class="icons" :class="setIcon?'vli-icon-'+options.icon[0]:'vli-icon-'+options.icon" :style="setIcon?options.icon[1]:''"></view>
			</view>
			<view class="vus-layer-content" :class="[{'is-title-icon':options.title||options.icon!=-1},options.contentAlign]" :style="setContent?options.content[1]:''">{{setContent?options.content[0]:options.content}}</view>
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
			return this.$vusuiLayer.state.dialog;
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
        if (typeof this.options.button === 'string') {
            this.button = [this.options.button];
        } else {
            this.button = this.options.button;
        }
		this.options.time <= 0 || setTimeout(() => {
			Util.cancel(this.options, this.$vusuiLayer);
		}, this.options.time)
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
