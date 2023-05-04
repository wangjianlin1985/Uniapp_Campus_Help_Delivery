/**
 * Created by mingjiao on 2019/11/12.
 */
$(function () {
    $(".pass-btn").click(function () {
        $(".pass-mask").show();
    });
    $(".reject-btn").click(function () {
        $(".reject-mask").show();
    });
    $(".nobtn,.close-mask").click(function () {
        $(this).parents(".mask").hide();
    });
    // 点确认
    $(".okbtn").click(function () {
        $(this).parents(".mask").hide();
    });
});