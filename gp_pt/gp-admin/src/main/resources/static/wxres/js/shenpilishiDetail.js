/**
 * Created by mingjiao on 2019/11/11.
 */
$(function () {
    //点击撤销按钮 弹窗出现
    $(".submit").click(function () {
       $(".mask").show();
    });
    // 点击取消关闭按钮 弹窗隐藏
    $(".nobtn, .close-mask").click(function () {
       $(".mask").hide()
    });
    // 点确认
    $(".okbtn").click(function () {
        $(".mask").hide()
    });
});