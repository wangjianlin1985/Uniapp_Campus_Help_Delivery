layui.define('table',function (exports) {
    "use strict";
    var $ = layui.$
        ,table = layui.table
        ,MOD_NAME = 'transfer',LEFT_TABLE = 'left-table-',RIGHT_TABLE = 'right-table-',LEFT_BTN = 'left-btn-',RIGHT_BTN = 'right-btn-',FILTER= 'test'
        ,DISABLED = 'layui-btn-disabled',BTN = 'button',BTN_STLY='btn',MD5='layui-col-md5',MD2='layui-col-md2'
        ,transfer = {
            index:layui.transfer?(layui.transfer+1000):0
            ,idData:[] //ID池
            ,data:[] //原始数据
            ,options:[]
            ,update:function (data,filed) {
                if(filed=='' && data && data.length > 0){
                    var d = [];
                    $.each(data,function (k,v) {
                        v.LAY_TABLE_INDEX && delete v.LAY_TABLE_INDEX
                        v.LAY_CHECKED && delete v.LAY_CHECKED
                        d.push(v)
                    })
                    return d
                }else if(filed && data && data.length > 0){
                    d = '';
                    $.each(data,function (k,v) {
                        if( k === 0 ){
                            d += v[filed]
                        }else{
                            d += ','+ v[filed]
                        }
                    })
                    return d
                }else{
                    return [];
                }
            }
            ,get:function (option,type,field) {
                var index = option.index
                var data = transfer.data;
                if(!index){
                    return [];
                }

                if(type==='all'){
                    var d = [],d1=[],d2=[];
                    for (var i = data.length - 1; i >= 0; i--) {
                        if(data[i].id==LEFT_TABLE+index){
                            d1= data[i].data;
                        }else if(data[i].id==RIGHT_TABLE+index){
                            d2 = data[i].data;
                        }
                    }
                    d.push({left:d1})
                    d.push({right:d2})
                    return d
                }else if(type==='left' || type==='l'){
                    for (var i = data.length - 1; i >= 0; i--) {
                        if(data[i].id==LEFT_TABLE+index){
                            return this.update(data[i].data,field);
                        }
                    }
                }else if(type === 'right' || type==='r'){
                    for (var i = data.length - 1; i >= 0; i--) {
                        if(data[i].id==RIGHT_TABLE+index){
                            return this.update(data[i].data,field);
                        }
                    }
                }
            }
        }
        ,thisRate = function () {
            var that = this
            return {
                index:that.index
            }
        }
        ,Class = function (options) {
            var that = this
            that.index = transfer.index?transfer.index:++transfer.index
            that.config = options
            transfer.options = options
            that.createHTMLDocument()
            that.render()
        };
    Class.prototype.createHTMLDocument = function () {
        var that = this
            ,elem  = that.config.elem
            ,index= that.index;
        //创建页面元素
        var html = '<div class="layui-container">\
                    <div class="layui-row">\
                      <div class="'+MD5+'">\
                        <table class="layui-hide" id="'+LEFT_TABLE+index+'" lay-filter="'+FILTER+'"></table>\
                      </div>\
                      <div class="'+MD2+'" style="text-align: center;">\
                        <div id="'+LEFT_BTN+index+'"  style="margin-bottom: 10px;"><button data-type="0" data-index="'+index+'" class="layui-btn  '+DISABLED+' '+BTN_STLY+'"> <i class="layui-icon">&#xe602;</i></button></div>\
                        <div id="'+RIGHT_BTN+index+'" ><button data-type="1" data-index="'+index+'" class="layui-btn '+DISABLED+' '+BTN_STLY+'"> <i class="layui-icon">&#xe603;</i></button></div>\
                      </div>\
                      <div class="'+MD5+'">\
                        <table class="layui-hide" id="'+RIGHT_TABLE+index+'" lay-filter="'+FILTER+'"></table>\
                      </div>\
                    </div>\
                  </div>';
        $(elem).html(html)
    }
    //初始化表格
    Class.prototype.render = function () {
        var that = this,options = that.config;
        var d1_c = {
            elem: '#'+LEFT_TABLE+that.index
            ,cols: [options.cols]
            ,data: (options.data[0]?options.data[0]:[])
            ,id:LEFT_TABLE+that.index
        }
        var d2_c = {
            elem: '#'+RIGHT_TABLE+that.index
            ,cols: [options.cols]
            ,data: (options.data[1]?options.data[1]:[])
            ,id:RIGHT_TABLE+that.index
        }
        if(options.tabConfig){
            d1_c = $.extend(d1_c,options.tabConfig)
            d2_c = $.extend(d2_c,options.tabConfig)
        }
        transfer.idData.push(that.index)
        transfer.data = [];
        transfer.data.push({id:LEFT_TABLE+that.index,data:(options.data[0]?options.data[0]:[])})
        transfer.data.push({id:RIGHT_TABLE+that.index,data:(options.data[1]?options.data[1]:[])})
        table.render(d1_c)
        table.render(d2_c)
        that.move()
    };
    //左右移动按钮根据左表格居中
    Class.prototype.move = function () {
        var that = this
            ,elem = $('#'+LEFT_TABLE+that.index)
            ,h = elem.parent().height();
        h =  h / 2 - 44;
        elem.parents('.layui-row').find('.'+MD2).css('padding-top',h+'px')
    }
    //点击事件
    $(document).on('click','.'+BTN_STLY,function () {
    	if(!$(this).hasClass(DISABLED)){
 			var othis = $(this),type = othis.data('type');
        	datas(type)
    	}
       
    })

    //数据处理
    //data 选中数据
    //type 类型 0 左 1 右
    function datas (type) {
        var d = transfer.data;
        var d1 = d[0].data;
        var d2 =  d[1].data;
        var _d = [];
        if(d1.length > 0 && type==0){
            //左边的数据移动到右表
            var n_d1 = []; 
            d1.reverse()
            for (var i = 0; i < d1.length; i++) {
                if(d1[i].LAY_CHECKED===true){
                    delete d1[i].LAY_CHECKED
                    delete d1[i].LAY_TABLE_INDEX
                    d2.unshift(d1[i])
                }else{
                    delete d1[i].LAY_TABLE_INDEX
                    n_d1.push(d1[i])
                }
            }
            
            _d.push(n_d1,d2)

        }else if(d2.length > 0 && type==1){
             //左边的数据移动到右表
            var n_d2 = []; 
            for (var i = 0; i < d2.length; i++) {
                if(d2[i].LAY_CHECKED && d2[i].LAY_CHECKED===true){
                    delete d2[i].LAY_CHECKED
                    d2[i].LAY_TABLE_INDEX && delete d2[i].LAY_TABLE_INDEX
                    d1.push(d2[i])
                }else{
                    delete d2[i].LAY_TABLE_INDEX
                    n_d2.push(d2[i])
                }
            }
             _d.push(d1,n_d2)
        }
        var options = transfer.options
        options.data =datasChecked(_d);
        transfer.render(options)
    }

    function datasChecked(data){
    	var d1= [];
    	var d2 = [];
    	if(data[0] && data[0].length){
    		$.each(data[0],function(k,v){
    			 v.LAY_CHECKED===true && delete v.LAY_CHECKED
    			 d1.push(v)
    		});
    	}
    	if(data[1] && data[1].length){
    		$.each(data[1],function(k,v){
    			 v.LAY_CHECKED===true && delete v.LAY_CHECKED
    			 d2.push(v)
    		});
    	}
    	return [d1,d2];
    }

    //数据处理
    // Class.prototype.shiftData = function (data1,data2,data,type) {
    //     var da = [];//未选中的数据
    //     // d1.reverse();
    //     $.each(data1,function(k,v){
    //         if(!v.LAY_CHECKED){
    //             da.push(v)
    //         }
    //     })
    //     // dd.reverse();
    //     $.each(data,function(kk,vv){
    //         data2.push(vv)
    //     })
    //     var d = [];
    //     if(type==0){
    //         d.push(da)
    //         d.push(data2)
    //         $('#'+LEFT_BTN+this.index).children(BTN).addClass(DISABLED);
    //     }else if(type==1){
    //         d.push(data2)
    //         d.push(da)
    //         $('#'+RIGHT_BTN+this.index).children(BTN).addClass(DISABLED);
    //     }
    //     this.config.data = d
    //     this.render()
    // }
    //选中状态
    table.on('checkbox('+FILTER+')', function(obj){
        var idData = transfer.idData,lenght = idData.length;
        if(lenght > 0){
            for (var i=0;i<=lenght-1;i++){
                var checkStatus1 = table.checkStatus(LEFT_TABLE+idData[i])
                    ,data_1 = checkStatus1.data
                    ,checkStatus2 = table.checkStatus(RIGHT_TABLE+idData[i])
                    ,data_2 = checkStatus2.data;
                if(data_1.length >0){
                    $('#'+LEFT_BTN+idData[i]).children(BTN).removeClass(DISABLED);
                }else{
                    $('#'+LEFT_BTN+idData[i]).children(BTN).addClass(DISABLED);
                }
                if(data_2.length >0){
                    $('#'+RIGHT_BTN+idData[i]).children(BTN).removeClass(DISABLED);
                }else{
                    $('#'+RIGHT_BTN+idData[i]).children(BTN).addClass(DISABLED);
                }
            }
        }
    });


    transfer.render = function (options) {
        var inst = new Class(options)
        return thisRate.call(inst)
    }
    exports(MOD_NAME,transfer)
})
