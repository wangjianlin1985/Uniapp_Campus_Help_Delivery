/**
 * Created by mingjiao on 2019/11/11.
 */
$(function () {
    // 下拉菜单
    myDateFn("#mydate")
    selectFn("#service");
    selectFn("#time");

    //    切换tab
    $(".tab span").click(function () {
       $(this).addClass("current").siblings().removeClass("current");
        var index = $(this).index();
        $(".big-wrap").eq(index).show().siblings(".big-wrap").hide();
    });

    //点击提交 弹窗出现
    $(".submit").click(function () {
        var showMask = function () {
            showFn();
        };
        checkInput("input",showMask,1);
    });

    // 点击取消关闭按钮 弹窗隐藏
    $(".nobtn, .close-mask").click(function () {
        hideFn();
    });

    // 点击确认
    $(".okbtn").click(function () {
       hideFn();
    });
});