import Vue from 'vue'
import App from './App'

// 第一步：引入 Vuex
import Vuex from 'vuex';
Vue.use(Vuex);
// 第二步：引入 Vusui-app-layer 弹层
import vusLayerInit from './vusui-app-layer/vusui-layer.js';
import vusLayer from './vusui-app-layer/vusui-layer.vue';
Vue.use(vusLayerInit);
Vue.component('vus-layer', vusLayer); //设置组件名称
// 第三步：new Vuex.Store()
const store = new Vuex.Store();

import cuCustom from './colorui/components/cu-custom.vue'
import dateutils from 'common/util.js'
Vue.component('cu-custom',cuCustom)
const baseColor = '#0081FF'
const baseURL = 'http://' + uni.getStorageSync('ip') + ':' + uni.getStorageSync('port') + uni.getStorageSync('appname')

// 引入请求文件
import http from '@/static/js/http.js'
import validate from '@/static/js/ys-validate.js'
import tool from '@/static/js/tool.js'
import pullUpMsg from '@/static/js/pullUpMsg.js'

Vue.config.productionTip = false
// http请求
Vue.prototype.http = http
// 网络前缀
Vue.prototype.baseURL = baseURL
// 全局颜色
Vue.prototype.baseColor = baseColor
// 日期插件
Vue.prototype.dateutils = dateutils
// 表单验证插件
Vue.prototype.validate = validate
// 图片等资源地址自动加上Http前缀
Vue.prototype.tool = tool

Vue.prototype.pullUpMsg = pullUpMsg

App.mpType = 'app'

const app = new Vue({
	store,
    ...App
})
app.$mount()
