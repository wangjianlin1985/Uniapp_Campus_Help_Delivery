/*!
 * @Name：vusui-app-layer v1.0.5 uni-app/小程序弹窗组件
 * @Site：http://www.vusui.com | https://vusui.github.io
 * @Author：林攀
 * @License：MIT
 * @开发日期：2019-12-18
 */
import Vuex from 'vuex';
import Util from './common/utils.js';
import './theme/default/vusui-layer.css';
export default {
    install(Vue) {
		Vue.prototype.$vusuiLayer = new Vuex.Store({
			state: {
				index: 0,
				zIndex: 19950512,
				dialog: {
					show: false,
					hide: false,
					type: 'dialog',
					zIndex: 0
				},
				message: {
					show: false,
					hide: false,
					type: 'message',
					zIndex: 0
				},
				loading: {
					show: false,
					hide: false,
					type: 'loading',
					zIndex: 0
				},
				prompt: {
					show: false,
					hide: false,
					type: 'prompt',
					zIndex: 0
				},
				drawer: {
					show: false,
					hide: false,
					type: 'drawer',
					zIndex: 0
				},
				page: {
					show: false,
					hide: false,
					type: 'page',
					zIndex: 0
				},
				photos: {
					show: false,
					hide: false,
					type: 'photos',
					zIndex: 0
				}
			},
			mutations: {
				// 核心方法
				open(state, options) {
					state[options.type] = Object.assign(state[options.type], options);
					state[options.type].show = true;
					state[options.type].zIndex = state.zIndex + state.index++;
					// #ifndef H5
					state[options.type].tabBar && uni.hideTabBar();
					// #endif
				},
				// 确定按钮事件
				yes(state, options) {
					Util.closeType(options, this);
					if (options.outAnim !== -1) {
						setTimeout(() => {
							options.yes && options.yes(options);
						}, 300);
					} else {
						setTimeout(() => {
							options.yes && options.yes(options);
						}, 30);
					}
				},
				// 取消按钮事件
				cancel(state, options) {
					Util.closeType(options, this);
					if (options.outAnim !== -1) {
						setTimeout(() => {
							options.cancel && options.cancel(options);
						}, 300);
					} else {
						setTimeout(() => {
							options.cancel && options.cancel(options);
						}, 30);
					}
				},
				// 自定义按钮事件
				btn(state, options) {
					Util.closeType(options, this);
					if (options.outAnim !== -1) {
						setTimeout(() => {
							options['btn'+options.btnIndex] && options['btn'+options.btnIndex](options);
						}, 300);
					} else {
						setTimeout(() => {
							options['btn'+options.btnIndex] && options['btn'+options.btnIndex](options);
						}, 30);
					}
				},
				// 关闭层时的退出动画效果
				hideAnim(state, options) {
					state[options.type].hide = options.hide;
				},
				// 关闭指定层
				close(state, options) {
					state[options.type].show = false;
					// #ifndef H5
					if (options.type == 'message' || options.type == 'loading') {
						if (!state.prompt.show && !state.drawer.show && !state.page.show && !state.photos.show) {
							state[options.type].tabBar && uni.showTabBar();
						}
					} else if (options.type == 'dialog') {
						if (!state.prompt.show && !state.drawer.show && !state.page.show && !state.photos.show) {
							state[options.type].tabBar && uni.showTabBar();
						}
					} else if (options.type == 'prompt') {
						if (!state.drawer.show && !state.page.show && !state.photos.show) {
							state[options.type].tabBar && uni.showTabBar();
						}
					} else {
						state[options.type].tabBar && uni.showTabBar();
					}
					// #endif
				}
			}
		})
		Vue.prototype.vusui = {
			open(options) {
				Vue.prototype.$vusuiLayer.commit('open', options);
			},
			// 提示框
			alert(content, options, yes) {
				let type = typeof options === 'function';
                if (type) yes = options;
				return this.open(Object.assign({
					type: 'dialog',
					title: '提示', //标题
					content: content, //['内容', 'font-size:26px']
					contentAlign: '', //内容对齐位置 left,right,center
					shadeClose: false, //点击遮罩关闭
					button: '确定', //按钮 ['btn1','btn2',...]
					buttonAlign: 'center', //按钮对齐位置left,center,right
					anim: 0, //0-6
					outAnim: 0, //0-6
					icon: -1, //['0','font-size:18px;'] 0-5
					time: 0, //0为不自动关闭,单位毫秒
					shade: 0.3, //遮罩透明度 0-1
					tabBar: true, //弹出层时是否隐藏原生tabBar导航栏
					yes: yes, //确定回调
					cancel: null, //取消回调
					btn1: null,
					btn2: null,
					btn3: null,
                }, type ? {} : options));
			},
			// 询问框
			confirm(content, options, yes, cancel) {
				let type = typeof options === 'function';
				if (type) {
					cancel = yes;
					yes = options;
				}
				return this.open(Object.assign({
					type: 'dialog',
					title: false, //标题
					content: content, //['内容', 'font-size:26px']
					contentAlign: '', //内容对齐位置
					shadeClose: false, //点击遮罩关闭
					button: ['确定', '取消'], //按钮 ['btn1','btn2',...]
					buttonAlign: 'center', //按钮对齐位置left,center,right
					anim: 0, //0-6
					outAnim: 0, //0-6
					icon: 4, //['0','font-size:18px;'] 0-5
					time: 0, //0为不自动关闭,单位毫秒
					shade: 0.3, //遮罩透明度 0-1
					tabBar: true, //弹出层时是否隐藏原生tabBar导航栏
					yes: yes, //确定回调
					cancel: cancel, //取消回调
					btn1: null,
					btn2: null,
					btn3: null,
				}, type ? {} : options));
			},
			// 信息提示
			msg(content, options, cancel) {
				let type = typeof options === 'function';
			    if (type) cancel = options;
			    return this.open(Object.assign({
					type: 'message',
					title: false,
			        content: content,
					contentAlign: '',
					shade: 0.01,
					shadeClose: false,
					button: false,
					buttonAlign: '',
					closeBtn: false,
					tabBar: true, //弹出层时是否隐藏原生tabBar导航栏
					anim: 0,
					outAnim: 0,
					icon: -1,
					time: 1500,
					cancel: cancel
			    }, type ? {} : options));
			},
			// 加载层
			load(icon, options) {
				return this.open(Object.assign({
					type: 'loading',
					title: false,
					content: '数据处理中',
					contentAlign: '',
					shade: 0.01,
					shadeClose: false,
					button: false,
					buttonAlign: '',
					closeBtn: false,
					tabBar: true, //弹出层时是否隐藏原生tabBar导航栏
					anim: 0,
					outAnim: 0,
					icon: icon || 0,
					time: 0
				}, options));
			},
			// 输入层
			prompt(options, yes) {
                options = options || {};
                if (typeof options === 'function') yes = options;
				return this.open(Object.assign({
					type: 'prompt',
					formType: 1,
					value: '', //输入值
					content: '', //描述内容 ['描述内容','font-size:20px;']
					height: '80px', //输入框高度
					regular: '', //正则
					placeholder: '请输入',
					length: [0, 255], //最小长度和最大长度,0为不限制
					count: false, //是否显示计算输入长度
					title: false,
					content: '', //描述内容 ['描述内容','font-size:20px;']
					shade: 0.3,
					shadeClose: false,
					button: ['确定', '取消'],
					tabBar: true, //弹出层时是否隐藏原生tabBar导航栏
					anim: 0,
					outAnim: 0,
					cancel: null,
					yes: (opt) => {
                        let reg = opt && opt.regular && new RegExp(opt.regular);
						if (!opt.value) {
							this.msg('不能为空');
						} else if ((opt.value.length < opt.length[0]) || (opt.length[1] > 0 && (opt.value.length > opt.length[1])) || (reg && !reg.test(opt.value))) {
							this.msg('填写不正确');
						} else {
							yes && yes(opt.value);
							Util.close(opt, Vue.prototype.$vusuiLayer);
						}
                    }
				}, options));
			},
			// 抽屉层
			drawer(position, options) {
				return this.open(Object.assign({
				    type: 'drawer',
				    content: '',
				    shade: 0.3,
				    shadeClose: true,
				    button: false,
				    buttonAlign: '',
				    anim: 4,
				    outAnim: 4,
				    time: 0,
					tabBar: true, //弹出层时是否隐藏原生tabBar导航栏
				    yes: null,
				    cancel: null,
					btn1: null,
					btn2: null,
					btn3: null,
				    position: position || 'right',
				}, function() {
                    options = options || {};
                    if (position) {
                        if (position == 'left') {
                            options.anim = 2;
                            options.outAnim = 2;
                        } else if (position == 'top') {
                            options.anim = 3;
                            options.outAnim = 3;
                        } else if (position == 'bottom') {
                            options.anim = 5;
                            options.outAnim = 5;
                        }
                    }
                    return options;
                }()));
			},
			// 页面层
			page(options) {
				return this.open(Object.assign({
					type: 'page',
					title: false, //标题
					content: '', //['内容', 'font-size:26px']
					shadeClose: false, //点击遮罩关闭
					button: '', //按钮 ['btn1','btn2',...]
					buttonAlign: '', //按钮对齐位置left,center,right
					closeBtn: true, //关闭按钮
					tabBar: true, //弹出层时是否隐藏原生tabBar导航栏
					anim: 0, //0-6
					outAnim: 0, //0-6
					shade: 0.3, //遮罩透明度 0-1
					yes: null, //确定回调
					cancel: null, //取消回调
					btn1: null,
					btn2: null,
					btn3: null,
			    }, options));
			},
			// 相集层
			photos(options) {
				return this.open(Object.assign({
					type: 'photos',
					title: false, //是否显示标题
					content: '',
					number: false, //是否显示页码
					shade: 0.8,
					shadeClose: true,
					closeBtn: true,
					tabBar: true, //弹出层时是否隐藏原生tabBar导航栏
					anim: 0,
					outAnim: 0,
					time: 0
				}, options));
			},
			// 关闭指定层
			close(type) {
				const store = Vue.prototype.$vusuiLayer;
				Util.close(store.state[type], store);
			},
			// 关闭所有层
			closeAll() {
				const store = Vue.prototype.$vusuiLayer;
				const types = ['dialog','message','loading','prompt','drawer','page','photos'];
				types.map(item => {
					Util.close(store.state[item], store);
				});
			}
		}
	}
}