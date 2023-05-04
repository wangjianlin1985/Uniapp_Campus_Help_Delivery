/**
 * Created by mingjiao on 2019/11/8.
 */
$(function () {
    //tab切换
    var tab_index = 0;
    $(".tab span").click(function () {
        tab_index = $(this).index();
        $(this).addClass("current").siblings().removeClass("current");
        if (tab_index == 0) {
            $(".subtract").removeClass("hide");
            $(".plus").addClass("hide");
        } else {
            $(".subtract").addClass("hide");
            $(".plus").removeClass("hide");
        }
    });


    /*-------------------扣分---------------------*/
    // 定义选择的日期值
    myDateFn("#mydate");
    selectFn('#fenlei');
    selectFn('#xize');
    selectFn('#time');
    selectFn('#floor');
    selectFn('#name');

    // 点击保存,如果所有的值都不为空,才让保存
    $(".subtract .save-btn").click(function () {
        var showMask = function () {
            showFn();
        };
        checkInput(".subtract input",showMask,1);
    });

    /*-------------------加分---------------------*/
    // 定义选择的日期值
    myDateFn("#plus_mydate");
    selectFn('#plus_fenlei');
    selectFn('#plus_xize');
    selectFn('#plus_time');
    selectFn('#plus_floor');
    selectFn('#plus_name');

    // 点击保存,如果所有的值都不为空,才让保存
    $(".plus .save-btn").click(function () {
        var showMask = function () {
            showFn();
        };
        checkInput(".plus input",showMask,1);
    });


    // 弹窗
    $(".close-mask").click(function () {
        showFn();
    });

    $(".mask .okbtn").click(function () {
        hideFn();
        $(".detail span").eq(0).addClass("current").siblings().removeClass("current");
    });
    $(".mask .nobtn").click(function () {
        hideFn();
        $("body,html").removeClass("oh");
    });
    $(".mask .close-mask").click(function () {
        hideFn();
    });

});