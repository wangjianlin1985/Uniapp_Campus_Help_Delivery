/**
 * Created by mingjiao on 2019/11/1.
 */
$(function () {
    // tabs切换
    $(".tabs li").click(function () {
        var index = $(this).index();
        $(this).addClass("tabs-active");
        $(this).siblings().removeClass("tabs-active");
        $(".my-wrap").addClass("hide");
        $(".my-wrap").eq(index).removeClass("hide");
    });


    //banner 滚动
    var swiper = new Swiper('.index-swiper', {
        loop: true,
        autoplay: {
            delay: 2000,//1秒切换一次
        },
        pagination: {
            el: '.swiper-pagination',
        },
        observer: true,//修改swiper自己或子元素时，自动初始化swiper
        observeParents: true//修改swiper的父元素时，自动初始化swiper
    });

});
