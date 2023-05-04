/**
 * Created by mingjiao on 2019/11/11.
 */
$(function () {
    // 切换tab
    $(".tab span").click(function () {
       $(this).addClass("current").siblings().removeClass("current");
        var index = $(this).index();
        $(".bigger-wrap").eq(index).show().siblings(".bigger-wrap").hide();
    });

    myDateFn("#mydate");
    myDateFn("#yshDate");

    // 点查询 出现查询结果
    $(".shBtn").click(function () {
        var showFn = function () {
            $(".shenhe .result").show();
        }
        checkInput(".shenhe", showFn)
    });

    $(".yshBtn").click(function () {
        var resultShowFn = function () {
            $(".yishenhe .result").show();
        };
        checkInput(".yishenhe",resultShowFn,1);
    });
});