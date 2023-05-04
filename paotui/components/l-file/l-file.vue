<template>
	<view class="">
		
		
	
	<view class='t-toptips' :style="{top: top,background: cubgColor}" :class="[show?'t-top-show':'']">
		<view v-if="loading" class="flex flex-sub">
			<view class="cu-progress flex-sub round striped active sm">
				<view :style="{ background: color,width: value + '%'}"></view>
			</view>
			<text class="margin-left">{{value}}%</text>
		</view>
		<block v-else>{{msg}}</block>
		
	</view>
	<view ref="input" class="input">
	
	</view>
	
	
	</view>
</template>

<script>
export default {
	props: {
		top: {
			type: String,
			default: 'auto'
		},
		bgColor: {
			type: String,
			default: 'rgba(49, 126, 243, 0.5)',
		},
		color: {
			type: String,
			default: '#e54d42',
		}
	},
	data() {
		return {
			cubgColor: '',
			loading: false,
			value: 5,
			show: false,
			msg: '执行完毕~',
			hParam:{}
		}
	},
	mounted() {
		// #ifdef H5
		  var input = document.createElement('input')
		  input.type = 'file'
		  // input.accept =  '.zip'
		  input.style.display = 'none'
		  input.id = 'file'
		  input.multiple="multiple"
		  input.onchange = (event) => {
		  	
		  	// 上传附件 获取文件信息
		  	this.fileinfo = event.target.files[0];
		  	// console.log("文件信息", this.fileinfo);
		  	//this.upload();
		  	 this.hRequest(this.hParam)
		  }
		  this.$refs.input.$el.appendChild(input);
		// #endif
		
		
	},
	methods: {
		toast(title = '',{ duration = 2000, icon = 'none'} = {}) {
			uni.showToast({title,duration,icon});
		},
		getRequest(url) {  
			let theRequest = new Object(); 
			let index = url.indexOf("?");
			if (index != -1) {  
				let str = url.substring(index+1);  
				let strs = str.split("&");  
				for(let i = 0; i < strs.length; i ++) {  
					theRequest[strs[i].split("=")[0]]=unescape(strs[i].split("=")[1]);  
				} 
			}  
			return theRequest;  
		},
		
		/*
			上传说明：
			currentWebview: 当前窗口webview对象
			url：上传接口地址
			name：上传文件key值
			header: 上传接口请求头
			...：body内其他参数
		*/
		appChooseFile({currentWebview,url,name = 'file',header,...formData} = {}) {
			// #ifdef APP-PLUS
				let wv = plus.webview.create("","/hybrid/html/index.html",{
					'uni-app': 'none', //不加载uni-app渲染层框架，避免样式冲突
					top: 0,
					height: '100%',
					background: 'transparent'
				},{
					url,
					header,
					formData,
					key: name,
				});
				wv.loadURL("/hybrid/html/index.html")
				currentWebview.append(wv);
				wv.overrideUrlLoading({mode:'reject'},(e)=>{
					let {fileName,id} = this.getRequest(e.url);
					fileName = unescape(fileName);
					id = unescape(id);
					return this.onCommit(
					this.$emit('up-success',{fileName,data: {id,statusCode: 200}})
					);
				});
			// #endif
		},
		wxChooseFile({url,name = 'file',header,...formData} = {}) {
			wx.chooseMessageFile({
				count: 2,
				type: 'file',
				success: ({tempFiles}) => {
				
					let [{path:filePath,name:fileName}] = tempFiles;
					this.setdefUI();
						
					return uni.uploadFile({
						url,
						name,
						filePath,
						formData,
						header,
						success: (res) => {
							if (res.statusCode==200) {
								
								let data = JSON.parse(res.data);
								
								//可自行添加后台返回状态验证
								return this.onCommit(this.$emit('up-success',{fileName,data}));
							}
							return this.errorHandler('文件上传失败',this.upErr);
						},
						fail: () => this.errorHandler('文件上传失败',this.upErr)
					});
				},
				fail: () => this.errorHandler('文件选择失败',this.upErr)
			})
		},
		hChooseFile({url,name = 'file',header,...formData} = {}) {
          // #ifdef H5
        
         // this.hRequest()
            document.getElementById("file").click();
			

			// #endif
		},
		// h5上传请求
		hRequest({url,name = 'file',header,...formData} = {}){
		
			
			// let mask = document.querySelector(".mask");
			// let fileDom = document.querySelector(".file");
			// let tis = document.querySelector(".tis");
			// let progress = document.querySelector(".tis-progress");
			// let cancel = document.querySelector(".cancel-btn");
		
			
			var file=document.getElementById("file").files[0];
			
			
		
			let createUpload = (file, url, key='file', header = {},data = {}) => {
				console.log(`
				上传地址:${url}\n
				请求头:${JSON.stringify(header)}\n
				参数:${JSON.stringify(data)}
				`);
				if (!url) {return;}
				//tis.style.display = 'flex';
				
				let formData = new FormData();
					formData.append(key, file);
				
				for (let keys in data) {
					formData.append(keys, data[keys]);
				}
				
				let xhr = new XMLHttpRequest();
				
				xhr.open("POST", url, true);
				
				for (let keys in header) {
					xhr.setRequestHeader(keys, header[keys]);
				}
				
				xhr.upload.addEventListener("progress", function(event) {
					if(event.lengthComputable){
						let percent = Math.ceil(event.loaded * 100 / event.total) + "%";
						// progress.innerText = `努力上传中..${percent}`;
					}
				}, false);
				
				xhr.ontimeout = function(){
					// xhr请求超时事件处理
					// progress.innerText = '请求超时';
				
				};
				
				xhr.onreadystatechange = (ev) => {
					
					if(xhr.readyState == 4) {
						console.log('status：'+xhr.status);
						
						if (xhr.status == 200) {
							let fileName=file.name;
							// progress.innerText = '上传成功';
							
							console.log('返回数据：'+xhr.responseText);
							//location.href = `callback?fileName=${escape(file.name)}&id=${escape(xhr.responseText)}`;
							
							return this.onCommit(
							this.$emit('up-success',{fileName,data: JSON.parse(xhr.response) })
							);
						}
						else {
							return this.errorHandler('文件上传失败',this.upErr);
						}
						
						
						
					}
				};
				xhr.send(formData);
				
			
			}
			
			createUpload(file, url, this.filename,header,{});
		
		},
		/* 
		上传
		*/
		upload(param = {}) {
		
			if (!param.url) {
				this.toast('上传地址不正确');
				return;
			}
			
			if (this.loading) {
				this.toast('还有个文件玩命处理中，请稍候..');
				return;
			}
			
			
			// #ifdef APP-PLUS
				return this.appChooseFile(param);
				
			// #endif
			
			// #ifdef H5
			   this.hParam=param;
				return this.hChooseFile(param);
				
			// #endif
			
			// #ifdef MP-WEIXIN
				return this.wxChooseFile(param);
			// #endif
		},
		/* 
		打开文件 
		*/
		open(filePath) {
			let system = uni.getSystemInfoSync().platform;
			if(system == 'ios'){
				filePath = encodeURI(filePath);
			}
			uni.openDocument({
				filePath,
				success: (res) => {console.log('打开文档成功');}
			});
		},
		/* 
		下载
		 type: temporary=返回临时地址，local=长期保存到本地
		 */
		download(url,type = 'temporary') {
			if (this.loading) {
				this.toast('还有个文件玩命处理中，请稍候..');
				return;
			}
			this.setdefUI();
			
			return new Promise((resolve,reject)=>{
				let downloadTask = uni.downloadFile({
				    url,
				    success: ({statusCode,tempFilePath}) => {
				        if (statusCode === 200) {
							if (type == 'local') {
								uni.saveFile({
									tempFilePath,
									success:({savedFilePath}) => this.onCommit(resolve(savedFilePath)),
									fail: () => this.errorHandler('下载失败',reject)
								});
							}
							else {
								this.onCommit(resolve(tempFilePath))
							}
						}
					},
					fail: () => this.errorHandler('下载失败',reject)
				});
				
				downloadTask.onProgressUpdate(({progress = 0}) => {
					if (progress <= 100) {
						this.$nextTick(()=>{
							this.value = progress;
						});
					}
				});
			})
			
		},
		
		onCommit(resolve) {
			this.msg = '执行完毕~';
			this.loading = false;
			this.cubgColor = 'rgba(57, 181, 74, 0.5)';
			setTimeout(()=>{this.show = false;},1500);
			return resolve;
		},
		
		setdefUI() {
			this.cubgColor = this.bgColor;
			this.value = 0;
			this.loading = true;
			this.show = true;
		},
		
		upErr(errText) {
			this.$emit('up-error',errText);
		},
		
		errorHandler(errText,reject) {
			this.msg = errText;
			this.loading = false;
			this.cubgColor = 'rgba(229, 77, 66, 0.5)';
			setTimeout(()=>{this.show = false;},1500);
			return reject(errText);
		}
		
	
	}
}
</script>

<style scoped>
	.t-toptips {
		width: 100%;
		padding: 18upx 30upx;
		box-sizing: border-box;
		position: fixed;
		z-index: 90;
		color: #fff;
		font-size: 30upx;
		left: 0;
		display: flex;
		align-items: center;
		justify-content: center;
		word-break: break-all;
		opacity: 0;
		transform: translateZ(0) translateY(-100%);
		transition: all 0.3s ease-in-out;
	}
	
	.t-top-show {
		transform: translateZ(0) translateY(0);
		opacity: 1;
	}
	
</style>
