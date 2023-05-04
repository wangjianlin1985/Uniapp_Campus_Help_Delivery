/**
 * Created by mingjiao on 2019/11/14.
 */
$(function () {
	 // 切换tab
    $(".tab span").click(function () {
       $(this).addClass("current").siblings().removeClass("current");
        var index = $(this).index();
        $(".big-wrap").eq(index).removeClass("hide").siblings(".big-wrap").addClass("hide");
    });
    // 选择是否离校
    $(".choose-item span").click(function () {
       $(this).addClass("on").siblings().removeClass("on");
    });
    // 下拉菜单
    selectFn('#type');
    // 开始日期
    $('#kaishiTime').mobiscroll().calendar({
        theme: 'mobiscroll',
        lang: 'zh',
        display: 'center',
        controls: ['calendar', 'time'],
        max: new Date()
    });
    // 结束日期
    $('#jieshuTime').mobiscroll().calendar({
        theme: 'mobiscroll',
        lang: 'zh',
        display: 'center',
        controls: ['calendar', 'time'],
        min: new Date()
    });
    // 点击销假
    $(".cx-btn").click(function () {
       $(".mask").removeClass("hide");
    });
    $(".okbtn").click(function () {
       $(".cx-btn").addClass("hide");
        $(".yx").removeClass("hide");
    });
    $(".nobtn, .close-mask,.okbtn").click(function () {
        $(".mask").addClass("hide");
    });

    // 点击提交
    $(".btn").click(function () {
        var myFn = function () {

        };
        checkInput(".big-wrap", myFn, 1);
    });

});
