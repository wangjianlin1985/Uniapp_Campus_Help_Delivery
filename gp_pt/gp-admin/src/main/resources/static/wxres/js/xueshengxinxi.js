/**
 * Created by mingjiao on 2019/11/15.
 */
$(function () {
    // 下拉菜单
    function selectFn(id, placeholder) {
        $(id).mobiscroll().treelist({
            onInit: function () {
                $("#sex_dummy").val("女");
            },
            theme: 'mobiscroll',
            lang: 'zh',
            display: 'center',
            placeholder: placeholder,
            width: 200,
            onClose: function () {
                var index = $(id).mobiscroll('getVal');
                var val = $(id).find('li').eq(index).text();
                $(id + "_dummy").val(val);
            }
        });
    }

//下拉菜单选择日期
    function myDateFn(ele, myFn) {
        $(ele).mobiscroll().date({
            theme: 'mobiscroll',
            lang: 'zh',
            display: 'center',
            placeholder: '请选择日期',
            dateFormat: 'yy年mm月dd日',
            max: new Date(),
            onClose: function () {
                if (myFn != undefined) {
                    myFn();
                }
            }
        });
    }

    selectFn('#sex');
    //请选择日期
    myDateFn("#birthday");
});