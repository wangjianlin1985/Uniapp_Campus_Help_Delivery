/**
 * Created by mingjiao on 2019/11/11.
 */
$(function () {

    $("input").val("");
    // 下拉菜单
    selectFn('#xibu');
    selectFn('#nianji');

    //---------------点击查询按钮----------------
    $(".search-btn").click(function () {
        var resultShowFn = function () {
            $(".seek-result").show();
        };
        checkInput(".big-wrap",resultShowFn);
    });

//    点击次数加1
    $(".result .item .btn").click(function () {
        var $i = $(this).parent().find("i");
        var num = $i.text();
        showFn();
        // 点弹窗的确认,把次数加1
        $(".mask .okbtn").click(function () {
            num++;
            $i.text(num);
            hideFn();
        });
    });

//    点击取消关闭弹窗
    $(".mask .nobtn, .close-mask").click(function () {
       hideFn();
    });

});