/**
 * Created by mingjiao on 2019/11/13.
 */
$(function () {
    // tab栏切换
    $(".tab span").click(function () {
       $(this).addClass("current").siblings().removeClass("current");
        var index = $(this).index();
        $(".wrap").eq(index).removeClass("hide").siblings(".wrap").addClass("hide");
    });

    // 点击选项
    $(".choose").click(function () {
       $(this).toggleClass("on");
    });

    // 点击批量办理
    $(".batch").click(function () {
       $(".choose,.mask-two,.btns").removeClass("hide");
        // 批量办理按钮消失,同意、驳回按钮出现
        $(".batch").addClass("hide");
    });

    // 点全选
    $(".check-all").click(function () {
       $(".choose").addClass("on");
    });

    // 点击同意
    $(".btns .pass").click(function () {
        if ($(".choose").hasClass("on")){
            $(".pass-mak").removeClass("hide");
            // 点击弹窗中的确认
            $(".okbtn").click(function () {
                $(".choose.on").parents("ul").remove();
                $(".pass-mak").addClass("hide");
                if ($(".ds-wrap ul").length == 0) {
                    $(".mask-two,.batch,.btns").addClass("hide");
                }
            });
        }
    });

    // 点驳回
    $(".btns .reject").click(function () {
        if ($(".choose").hasClass("on")){
            $(".reject-mask").removeClass("hide");
            $(".okbtn").click(function () {
                $(".choose.on").parents("ul").remove();
                $(".reject-mask").addClass("hide");
                if ($(".ds-wrap ul").length == 0) {
                    $(".mask-two,.batch,.btns").addClass("hide");
                }
            });
        }
    });

    // 点弹窗里面的取消
    $(".nobtn").click(function () {
        $(".choose").removeClass("on");
        $(this).parents(".mask").addClass("hide");
    });

    // 点底部取消按钮
    $(".btns .cancel").click(function () {
        $(".choose").removeClass("on");
        $(".btns,.mask-two,.choose").addClass("hide");
        $(".batch").removeClass("hide");
    });

});