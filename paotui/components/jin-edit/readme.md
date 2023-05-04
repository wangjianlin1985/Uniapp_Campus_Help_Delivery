## jin-edit 基于editor的富文本编辑器

### 兼容性

这是一个uni-app的通用组件，兼容微信小程序端、安卓端、ios端（未测试）、H5端。作者因没有ios设备无法对ios端进行测试，其他端测试无问题。

微信小程序 | APP | H5
:--: | :--: | :--:
√ | √ | √

我的HbuilderX版本2.6.7，不同的版本可能会造成不兼容的问题。

### 使用方式

1. 将此组件进入你的项目中的 /components/ 目录中
2. 在某个页面中使用该插件
- 在 `script` 中引用组件
```javascript
import jinEdit from '../../components/jin-edit/jin-edit.vue';
export default {
	data() {
		return {
			
		}
	},
	components: {
		jinEdit
	},
	methods: {
		// 点击发布
		editOk(res) {
			console.log(res);
		}
	}
}
```
- 在 `template` 中使用组件
```html
<jinEdit placeholder="请输入内容" @editOk="editOk" uploadFileUrl="/#"></jinEdit> 
```

### Demo

[uni-jin（一个uni-app组件集合）](https://github.com/wangjinxin613/uni-jin)

### 参数

属性 | 类型 | 默认值 | 说明
:--: | :--: | :--: | :--:
showImgSize | Boolean | false | 点击图片时显示图片大小控件
showImgToolbar | Boolean | false | 点击图片时显示工具栏控件
showImgResize | Boolean | false | 点击图片时显示修改尺寸控件
placeholder | String | '' | 编辑器占位符
uploadFileUrl | String | '#' | 图片上传的服务器地址
fileKeyName | String | 'file' | 图片上传时的name
header | Object | - | 图片上传http请求的header
html | String | - | 初始化的html 

### 方法

方法名 | 参数 | 说明
:--: | :--: | :--:
editOk | e={html,text,delta,isPublic} | 点击发布按钮触发	

以上