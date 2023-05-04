let mask = document.querySelector(".mask");
let fileDom = document.querySelector(".file");
let tis = document.querySelector(".tis");
let progress = document.querySelector(".tis-progress");
let cancel = document.querySelector(".cancel-btn");


let createUpload = (file, url, key='file', header = {},data = {}) => {
	if (!url) {return;}
	tis.style.display = 'flex';
	
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
			progress.innerText = `努力上传中..${percent}`;
		}
	}, false);
	
	xhr.ontimeout = function(){
		// xhr请求超时事件处理
		progress.innerText = '请求超时';
		setTimeout(()=>{
			tis.style.display = 'none';
			plus.webview.currentWebview().close();
		},1000);
	};
	
	xhr.onreadystatechange = (ev) => {
		if(xhr.readyState == 4) {
			console.log('status：'+xhr.status);
			if (xhr.status == 200) {
				progress.innerText = '上传成功';
				//console.log('返回数据：'+xhr.responseText);
				location.href = `callback?fileName=${file.name}&id=${xhr.responseText}`;
				
			}
			else {
				progress.innerText = '上传失败了';
			}
			
			setTimeout(()=>{
				tis.style.display = 'none';
				plus.webview.currentWebview().close();
			},1000);
			
		}
	};
	xhr.send(formData);
	
	cancel.addEventListener("click", ()=>{
		xhr.abort();
		plus.webview.currentWebview().close();
	});
}


mask.addEventListener("click", () => {
	plus.webview.currentWebview().close();
});

document.addEventListener('UniAppJSBridgeReady', () => {
	let {url,key,header,formData} = plus.webview.currentWebview();
	fileDom.addEventListener('change', (event) => {
		let file = fileDom.files[0];
		if(file.size > (1024*1024 * 10)) {
			plus.nativeUI.toast('单个文件不能超过10M,请重新上传');
			return;
		}
		// console.log(file.name);
		createUpload(file, url, key,header,formData);
	}, false);
});