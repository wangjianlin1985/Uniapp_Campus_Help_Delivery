/**
 * Created by mingjiao on 2019/11/12.
 */
$(function () {
    // 切换tab
    var index = 0;
    $(".tab span").click(function () {
        $(this).addClass("current").siblings().removeClass("current");
        index = $(this).index();
        if (index == 0) {
            $(".xinjianbaoxiu").show();
            $(".wofaqide").hide();
        } else {
            $(".wofaqide").show();
            $(".xinjianbaoxiu").hide();
        }
    });

    selectFn("#leixin", "请选择类型");

    // 点击删除按钮删除照片
    function delPhotoFn() {
        $(".delPhotoBtn").click(function () {
            $(this).parent("a").remove();
            return false;
        });
    }


    //上传图片
    $(".D13_file").change(function () {
       // 获取上传的文件
        var thisFiles = this.files;
        var filesLen = thisFiles.length;
        // 遍历当前上传的图片
        for (var i = 0; i < filesLen; i++) {
            // 获取上传的图片名称
            var fileName = thisFiles[i].name;
            // 判断上传的图片格式是否正确
            var fileFormat = fileName.split('.')[1].toLowerCase();
            if (!fileFormat.match(/png|jpg|jpeg/)) {
                layer.open({content:'上传错误,文件格式必须为：png/jpg/jpeg', skin: 'msg', time: 2});
                return;
            }
            // 如果图片格式正确就显示
            var src = window.URL.createObjectURL(thisFiles[i]);
            var str = '';
            str += '<a class="has-photo" href="' + src + '" data-size="683x1024" data-med="' + src + '" data-med-size="600x800">';
            str += '<span class="delPhotoBtn"></span>';
            str += '<img src="' + src + '"/>';
            str += '</a>';
            $(".my-gallery").append(str);
        }
        // 删除图片
        delPhotoFn();
    });

//    点击提交
    $(".submit-btn").click(function () {
        var showMask = function () {
            showFn();
        };
        checkInput(".xinjian",showMask,1)
    });

    // 点弹窗里面的取消
    $(".nobtn, .close-mask").click(function () {
        hideFn();
    });

    // 点击确认
    $(".okbtn").click(function () {
        hideFn();
    });

});