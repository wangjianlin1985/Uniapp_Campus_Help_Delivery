<!-- 
 * @Name：vusui-app-layer [layer] 层入口
 * @Site：http://www.vusui.com | https://vusui.github.io
 * @Author：林攀
 * @License：MIT
 * @开发日期：2019-12-18
 -->
<template>
	<view>
		<block v-if="options.dialog.show">
			<vus-mask :options="options.dialog" />
			<vus-dialog v-if="options.dialog.show" />
		</block>
		<block v-else-if="options.message.show">
			<vus-mask :options="options.message" />
			<vus-msg v-if="options.message.show" />
		</block>
		<block v-else-if="options.loading.show">
			<vus-mask :options="options.loading" />
			<vus-load v-if="options.loading.show" />
		</block>
		<block v-if="options.prompt.show">
			<vus-mask :options="options.prompt" />
			<vus-prompt v-if="options.prompt.show" />
		</block>
		<block v-if="options.drawer.show">
			<vus-mask :options="options.drawer" />
			<vus-drawer v-if="options.drawer.show">
				<slot name="drawer"></slot>
			</vus-drawer>
		</block>
		<block v-else-if="options.page.show">
			<vus-mask :options="options.page" />
			<vus-page v-if="options.page.show">
				<slot name="page"></slot>
			</vus-page>
		</block>
		<block v-else-if="options.photos.show">
			<vus-mask :options="options.photos" />
			<vus-photos v-if="options.photos.show">
				<slot name="photos"></slot>
			</vus-photos>
		</block>
	</view>
</template>

<script>
import Util from './common/utils.js';
import vusMask from "./components/vus-mask.vue";
import vusDialog from "./components/vus-dialog.vue";
import vusMsg from "./components/vus-msg.vue";
import vusLoad from "./components/vus-load.vue";
import vusPrompt from "./components/vus-prompt.vue";
import vusDrawer from "./components/vus-drawer.vue";
import vusPage from "./components/vus-page.vue";
import vusPhotos from "./components/vus-photos.vue";
export default {
	name: 'vusLayer',
	data() {
		return {}
	},
	components: {
		vusMask,
		vusDialog,
		vusMsg,
		vusLoad,
		vusPrompt,
		vusDrawer,
		vusPage,
		vusPhotos
	},
	computed: {
		options() {
			return this.$vusuiLayer.state;
		}
	},
	beforeDestroy() {
		this.vusui.closeAll();
	}
}
</script>

<style>
</style>
