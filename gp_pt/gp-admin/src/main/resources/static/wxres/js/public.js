/**
 * Created by mingjiao on 2019/11/8.
 */
/*-------------------函数封装-----------------*/

//下拉菜单
function selectFn(id) {
    $(id).mobiscroll().select({
        theme: 'mobiscroll',
        lang: 'zh',
        display: 'center'
    });
}

//下拉菜单选择日期
function myDateFn(ele, myFn) {
    $(ele).mobiscroll().date({
        theme: 'mobiscroll',
        lang: 'zh',
        display: 'center',
        placeholder: '请选择日期',
        dateFormat: 'yy-mm-dd',
        max: new Date(),
        onClose: function () {
            if (myFn != undefined) {
                myFn();
            }
        }
    });
}

//隐藏弹窗方法
function hideFn() {
    $(".mask").addClass("hide");
}
//显示弹窗方法
function showFn() {
    $(".mask").removeClass("hide");
}
//检查选项有没有完全被选择
function checkInput(ele, myFn, sign) {
    var num = 0;
    //检查页面中所有的Input是否有值,如果没有值就让num+1
    var input = $(ele).find("input");
    for (var i = 0; i < input.length; i++) {
        if ($(input[i]).val().length == 0) {
            num = num + 1;
        }
    }
    // 检验select标签有没有被选中,如果没有被选,num+1;
    var selected = $(ele).find("option:selected");
    for (var j = 0; j < selected.length; j++) {
        if ($(selected[j]).val() == "") {
            num = num + 1;
        }
    }
    // 页面中有textarea的,先判断是否存在,如果存在就看有没有值,没有值,num+1
    if ($("textarea") != undefined) {
        var txt = $("textarea").val();
        if (txt == 0) {
            num = num + 1
        }
    }
    // num=0,即所有选项都被选择过了
    if (num == 0) {
        myFn();
    } else {
        if (sign == 1) {
            layer.open({
                content: '您有未选择或输入的选项',
                skin: 'msg',
                time: 2
            });
        } else {
            layer.open({
                content: '您有未选择的选项',
                skin: 'msg',
                time: 2
            });
        }
    }
}