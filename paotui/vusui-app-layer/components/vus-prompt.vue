<!-- 
 * @Name：vusui-app-layer [prompt] 输入层
 * @Site：http://www.vusui.com | https://vusui.github.io
 * @Author：林攀
 * @License：MIT
 * @开发日期：2019-12-18
 -->
<template>
	<view class="vus-layer" :style="setLayerStyle">
		<view class="vus-layer-prompt vus-layer-anim" :class="addAnim">
			<view class="vus-layer-title" v-if="options.title">{{options.title}}</view>
			<view class="vus-layer-content">
				<textarea v-if="options.formType==2" class="vus-layer-input vus-layer-input-textarea" :class="{focus:flagFocus}" fixed adjust-position :cursor-spacing="cursorSpacing" v-model="inputValue" @focus="focus" @blur="blur" :style="{height:options.height}" :placeholder="options.placeholder" :minlength="setMinLength" :maxlength="setMaxLength" />
				<input v-else-if="options.formType==1" type="text" adjust-position :cursor-spacing="cursorSpacing" v-model="inputValue" @focus="focus" @blur="blur" class="vus-layer-input" :class="{focus:flagFocus}" :placeholder="options.placeholder" :minlength="setMinLength" :maxlength="setMaxLength" />
				<input v-else type="text" adjust-position password :cursor-spacing="cursorSpacing" v-model="inputValue" @focus="focus" @blur="blur" class="vus-layer-input" :class="{focus:flagFocus}" :placeholder="options.placeholder" :minlength="setMinLength" :maxlength="setMaxLength" />
				<view v-if="options.count&&(options.length[0]>0||options.length[1]>0)" class="vus-layer-input-count">
					<text v-if="currentLength<options.length[0]||currentLength==options.length[1]" class="vus-layer-input-count-color">{{currentLength}}</text>
					<text v-else>{{currentLength}}</text>
					<text v-if="options.length[0]&&options.length[1]">({{options.length[0]}}~{{options.length[1]}})</text>
					<text v-else-if="options.length[0]&&!options.length[1]">({{options.length[0]}}~{{'不限制'}})</text>
					<text v-else-if="!options.length[0]&&options.length[1]">/{{options.length[1]}}</text>
				</view>
				<view v-if="options.content" class="vus-layer-prompt-text" :style="conType?options.content[1]:''" v-html="conType?options.content[0]:options.content"></view>
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
	name: 'vusAlert',
	data() {
		return {
			addAnim: '',
			button: [],
			flagFocus: false,
			currentLength: 0,
			cursorSpacing: 80,
            inputValue: '',
            titleType: false,
            conType: false,
			prompt: {
                type: 1,
                value: '', //输入值
                content: '', //描述内容 ['描述内容','font-size:20px;']
                height: '80px', //输入框高度
                regular: '', //正则
                placeholder: '请输入',
                length: [0, 255], //最小长度和最大长度,0为不限制
                count: false, //是否显示计算输入长度
            }
		}
	},
	computed: {
		options() {
			return this.$vusuiLayer.state.prompt;
		},
		hideAnim() {
			return this.$vusuiLayer.state.prompt.hide;
		},
		setLayerStyle() {
			return `z-index:${this.options.zIndex};`;
		},
		setMinLength() {
			let config = this.options;
			if (config.length[0] <= 0) {
				return -1;
			} else {
				return config.length[0];
			}
		},
		setMaxLength() {
			let config = this.options;
			if (config.length[0] > config.length[1]) {
				if (config.length[1] <= 0) {
					return -1;
				} else {
					return config.length[0];
				}
			} else if (config.length[1] > 0) {
				return config.length[1];
			} else {
				return -1;
			}
		}
	},
	created() {
		let config = this.options;
		this.addAnim = config.anim !== -1 ? 'vus-layer-anim-'+config.anim : '';
		config = Object.assign(this.prompt, config);
        this.titleType = typeof config.title == 'object';
        this.conType = typeof config.content == 'object';
        if (typeof config.button === 'string') {
            this.button = [config.button];
        } else {
            this.button = config.button;
        }
		this.inputValue = config.value || '';
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
		focus() {
			this.flagFocus = true;
		},
		blur() {
			this.flagFocus = false;
		}
    },
	watch: {
		hideAnim(newVal) {
			if (this.options.outAnim !== -1 && newVal) {
				this.addAnim = 'vus-layer-anim-close-'+this.options.outAnim;
			}
		},
		inputValue(newVal) {
			this.options.value = newVal;
            this.currentLength = newVal.length;
        }
	}
}
</script>

<style></style>
