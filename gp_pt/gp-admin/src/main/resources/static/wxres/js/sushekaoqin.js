/**
 * Created by mingjiao on 2019/11/7.
 */
$(function () {
    //tab切换
    var tab_index = 0;
    $(".tab span").click(function () {
        tab_index = $(this).index();
        $(this).addClass("current").siblings().removeClass("current");
        if (tab_index == 0) {
            $(".kaoqin").removeClass("hide");
            $(".qingjia").addClass("hide");
        } else {
            $(".kaoqin").addClass("hide");
            $(".qingjia").removeClass("hide");
        }
    });
    //-----------宿舍考勤------------
    selectFn('#tower');
    selectFn('#floor');
    //请选择日期
    var nowDateVal = '';
    var nowDateValFn = function () {
        nowDateVal = $("#my_date").val();
    };
    myDateFn("#my_date",nowDateValFn);

    //全部正常
    $(".all-normal-btn").click(function () {
        showFn();
    });

    // 关闭弹窗
    $(".close-mask").click(function () {
        hideFn();
    });

    $(".mask .okbtn").click(function () {
        hideFn();
        $(".detail span").eq(0).addClass("current").siblings().removeClass("current");
    });
    $(".mask .nobtn").click(function () {
        hideFn();
        $("body,html").removeClass("oh");
    });

    // 修改考勤状态
    $(".detail span").click(function () {
        $(this).addClass("current").siblings().removeClass("current");
    });

    //-----------宿舍请假------------
    //选择系部
    selectFn('#qj_tower');

    //选择年级
    selectFn('#qj_floor');

    //请选择日期
    $('#qj_date').mobiscroll().date({
        theme: 'mobiscroll',
        lang: 'zh',
        display: 'center',
        placeholder: '请选择日期',
        dateFormat: 'yy-mm-dd',
        max: new Date()
    });

    //-------------------点查询出现查询结果
    // 获取当前日期
    var myDate = new Date;
    var year = myDate.getFullYear(); //获取当前年
    var mon = myDate.getMonth() + 1; //获取当前月
    var date = myDate.getDate(); //获取当前日
    if (date < 10) {
        date = '0' + date;
    }
    var nowDate = year + '-' + mon + '-' + date;
    // 班级考勤查询点击
    // 如果input的值都为空
    $(".kq-btn").click(function () {
        var showFn = function () {
            $(".kq-result").removeClass("hide");
            // 如果选择的日期=当前日期,让表格隐藏,可编辑的选项卡显示
            if (nowDateVal == nowDate) {
                $(".old-date-result").hide();
                $(".result-choose-card").show();
            } else {
                $(".old-date-result").show();
                $(".result-choose-card").hide();
            }
        };
        checkInput(".kaoqin", showFn);
    });

    //班级请假查询点击
    $(".qj-btn").click(function () {
        var showFn = function () {
            $(".qj-result").removeClass("hide");
        };
        checkInput(".qingjia", showFn);
    });


});