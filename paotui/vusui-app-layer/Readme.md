# Vusui-app-layer

## 前言
Vusui-app-layer 是一个基于 uni-app 的弹层组件库。`插件市场版本如果和更新日志不一样，请移步 Github 下载`。有组件需求或者 Bug 提交也可以移步到 issues。

## 特别说明
* Vusui-app-layer 是一个非原生的组件库，是无法覆盖原生 tabBar导航栏 与 navigationBar标题栏的。所以，有这方面问题的童鞋请先了解 uni-app 或者小程序相关组件和API文档。
* Vusui-app-layer 组件库使用的是 HX 2.4 以上版本开发的，在APP、H5、小程序上测试是没有问题的，低版本的 HX、小程序和浏览器不保证能正常使用。

## API 文档手册
[查看API文档](https://vusui.github.io/#/app/layer)

## 在线演示
用微信扫描下方二维码打开 Vusui-app 微信小程序，在`组件栏`点击`弹层`在线体验 Vusui-app-layer 组件。
<p align="left"><a href="https://vusui.github.io" target="_blank" rel="noopener noreferrer"><img width="260" height="260" src="https://vusui.github.io/img/mp-qc.37d7e614.jpg"></a></p>

 
## 开始使用
下载源码解压，复制 `Vusui-app-layer` 目录到你的根目录。

 在 `main.js` 中写入以下内容。（注：Vusui-app-layer 使用到 `Vuex` 状态管理模式，所以，需要安装引入 `Vuex`。）
```
import Vue from 'vue';
import App from './App.vue';

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
const app = new Vue({
    store,
    ...App
})
app.$mount()
```

第四步（`重要`）：在需要用到 `Vusui-app-layer` 弹层组件的页面写入 `vus-layer` 组件。
```
<template>
    <view>
        <vus-layer></vus-layer>
    </view>
</template>

<script>
export default {
    
}
</script>
```

## 更新日志
 * 2020年01月11日 v1.0.5
    *  删除 css svg 动画，改为 image 动画。
 
 * 2020年01月06日 v1.0.4
	*  增加 tabBar 属性，设置可控显示或隐藏 tabBar 导航栏
	*  优化 vusui-layer.vue
    *  优化 css 动画等

 * 2020年01月05日 v1.0.3
    *  新增 page 页面层
	*  新增 photos 图集层
	*  修改 load 加载层动画效果
	*  优化弹层动画
	
 * 2020年01月03日 v1.0.2
    *  修复关闭层时 showTabBar() 导致不正确的BUG
	
 * 2020年01月03日 v1.0.1
    *  增加 hideTabBar() 和 showTabBar() 来显示/隐藏原生tabBar功能
	 
 * 2019年12月30日 v1.0
    *  发布第一个版本

## License
[MIT](http://opensource.org/licenses/MIT)

Copyright (c) 2017-present, VusUI