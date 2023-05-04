/*!
 * @Name：vusui-app-layer [utils] 通用工具类
 * @Site：http://www.vusui.com | https://vusui.github.io
 * @Author：林攀
 * @License：MIT
 * @开发日期：2019-12-18
 */
export default class Util {
	// 确定按钮
	static yes(options, store) {
		if (typeof(options.yes) === 'function') {
			store.commit('yes', options);
		} else if (typeof(options['btn1']) === 'function') {
			options.btnIndex = 1;
			store.commit('btn', options);
		} else {
			this.close(options, store);
		}
	}
	
	// 取消按钮
	static cancel(options, store, index) {
		if (typeof(options.cancel) === 'function') {
			store.commit('cancel', options);
		} else if (typeof(options['btn' + index]) === 'function') {
			options.btnIndex = index;
			store.commit('btn', options);
		} else {
			this.close(options, store);
		}
	}
	
	// 关闭层
	static close(options, store) {
		if (options.outAnim !== -1) {
			options.hide = true;
			store.commit('hideAnim', options);
			setTimeout(() => {
				options.hide = false;
				store.commit('close', options);
				store.commit('hideAnim', options);
			}, 300);
		} else {
			options.hide = false;
			store.commit('close', options);
			store.commit('hideAnim', options);
		}
	}
	
	// 关闭指定类型
	static closeType(options, store) {
		switch (options.type) {
			case 'dialog':
			case 'message':
				this.close(options, store);
				break;
			default:
				break;
		}
	}
}