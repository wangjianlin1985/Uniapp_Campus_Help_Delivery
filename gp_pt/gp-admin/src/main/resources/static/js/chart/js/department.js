// 获取当前日期
	var mydate = new Date();
	var arr = []
	var termTime = {
		term: '',
		startD: '',
		endD: ''
	}
	// 定义时间段的显示
	var weekVal = "";
	var monthVal = "";
	var termVal = "";

	/*--周--*/
	layui.use('laydate', function () {
		var weekdata = layui.laydate;
		weekdata.render({
			elem: '#week',
			type: 'date',
			position: 'static',
			showBottom: false,
			max: getNowFormatDate(),
			value: mydate,
			isInitValue: true, //是否允许填充初始值，默认为 true
			format: "yyyy-MM-dd~yyyy-MM-dd",
			/**
			ready: function (value) {
				$(".layui-this").parent("tr").addClass("my-layui-bg");
				getWeekDate(value.year + '-' + value.month + '-' + value.date + "~");
			},*/
			done: function (value) {
				getWeekDate(value);
				var $tr = $(".layui-this").parent("tr");
				$tr.addClass("my-layui-bg").siblings("tr").removeClass("my-layui-bg");
			}
		});
	});

	/*--月份--*/
	layui.use('laydate', function () {
		var laydate = layui.laydate;
		laydate.render({
			elem: '#month',
			type: 'month',
			position: 'static',
			showBottom: false,
			max: getNowFormatDate(),
			ready: function (value) {
				var year = value.year;
				var month = value.month;
				var days = "";
				//当月份为二月时，根据闰年还是非闰年判断天数
				if (month == 2) {
					days = year % 4 == 0 ? 29 : 28;
				} else if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
					days = 31;
				} else {
					days = 30;
				}
				monthVal = year + '-' + month + '-01' + "~" + year + '-' + month + '-' + days;
				// console.log('月份 monthVal', monthVal)
				$(".date-pick").val(monthVal);

			},
			change: function (value, date) {
				var year = date.year;
				var month = date.month;
				var days = "";
				//当月份为二月时，根据闰年还是非闰年判断天数
				if (month == 2) {
					days = year % 4 == 0 ? 29 : 28;
				} else if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
					days = 31;
				} else {
					days = 30;
				}
				if(month < 10){
					monthVal = year + '-0' + month + '-01' + "~" + year + '-0' + month + '-' + days;
				} else {
					monthVal = year + '-' + month + '-01' + "~" + year + '-' + month + '-' + days;
				}

				$(".date-pick").val(monthVal);
				// 为termTime赋值
				arr = $('.date-pick').val().split('~')
				termTime.startD = arr[0]
				termTime.endD = arr[1]
				$('.my-layui-con').hide()
				searchStart = termTime.startD;
			    searchEnd = termTime.endD
			    loadAll();
			}
		});
	});






	// 获取周区间
	function getWeekDate (value) {
		if (value != "" && value.length > 0) {
			var today = new Date(value.split('~')[0]);
			var weekday = today.getDay();
			var monday;
			var sunday;
			if (weekday == 0) {
				monday = new Date(1000 * 60 * 60 * 24 * (weekday - 6) + today.getTime());
			} else {
				monday = new Date(1000 * 60 * 60 * 24 * (1 - weekday) + today.getTime());
			}
			if (weekday == 0) {
				sunday = today;
			} else {
				sunday = new Date(1000 * 60 * 60 * 24 * (7 - weekday) + today.getTime());
			}
			var month = monday.getMonth() + 1;
			if (month < 10) {
				month = "0" + month;
			}
			var day1 = monday.getDate();
			if (day1 < 10) {
				day1 = "0" + day1;
			}
			var start = "" + monday.getFullYear() + "-" + month + "-" + day1;
			var month2 = sunday.getMonth() + 1;
			if (month2 < 10) {
				month2 = "0" + month2;
			}
			var day2 = sunday.getDate();
			if (day2 < 10) {
				day2 = "0" + day2;
			}
			var end = "" + sunday.getFullYear() + "-" + month2 + "-" + day2;
			weekVal = start + "~" + end;
			$(".date-pick").val(weekVal);
		} else {
			$(".date-pick").val('');
		}
		arr = $(".date-pick").val().split('~')
		termTime.startD = arr[0]
		termTime.endD = arr[1]
		$('.my-layui-con').hide()
		searchStart = termTime.startD;
		searchEnd = termTime.endD
	    loadAll();
	}



	// 让当前日期后面的不可点击
	function getNowFormatDate () {
		var date = new Date();
		var seperator1 = "-";
		var seperator2 = ":";
		var month = date.getMonth() + 1;
		var strDate = date.getDate();
		if (month >= 1 && month <= 9) {
			month = "0" + month;
		}
		if (strDate >= 0 && strDate <= 9) {
			strDate = "0" + strDate;
		}
		var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
			+ " " + date.getHours() + seperator2 + date.getMinutes()
			+ seperator2 + date.getSeconds();
		return currentdate;
	}

	// 点击周、月、学期，显示对应控件
	$(".btns li").click(function () {
		var index = $(this).index();
		$(this).addClass("current").siblings().removeClass("current");
		// 有更改***************
		$(this).parents('ul').siblings('.datelist').eq(index).show().siblings('.datelist').hide()

		if (index == 0) {
			$(".date-pick").val(weekVal);
		} else if (index == 1) {
			$(".date-pick").val(monthVal);
		} else if (index == 2) {
			$(".date-pick").val(termVal);
		}
	});
	
	// 点击时间范围，出现时间选择面板
	$(".date-pick-con input").click(function () {
	  $(".my-layui-con").toggle();
	})


	// 选择时间段
	$("#term").on('click', 'li', function () {
	  $(this).addClass('nowTerm').siblings().removeClass('nowTerm')
	  var t = $(this).attr('id')
	  $(".date-pick").val(t);
	  $(".my-layui-con").hide()
	  searchStart = t.split('~')[0]
	  searchEnd = t.split('~')[1]
	  loadAll();
	})
	

//    菜单
    $(".menu-box .title").click(function () {
        $(this).siblings(".menu-list-box").toggleClass("hide");
        $(this).parent().siblings(".menu-box").find(".menu-list-box").addClass("hide");
        window.event ? window.event.cancelBubble = true : e.stopPropagation();
        $("body").click(function () {
            $(".menu-list-box").addClass("hide");
        });
	 });
    
    //切换教师贡献度排行
    var $teacher_tabs = $(".teacher .tabs .tab");
    $teacher_tabs.click(function () {
        var index = $(this).index();
        if (index==1) {
            $(".teacher .tabs").addClass("on");
        } else {
            $(".teacher .tabs").removeClass("on");
        }
    });

// 切换优秀学生预警学生
    var student_score_item = $(".score-student .main-item-change");
    var student_score_tabs = $(".student-score-tabs .tab");
    $(student_score_tabs).click(function () {
        var index = $(this).index();
        if (index==1) {
            $(".student-score-tabs").addClass("on");
        } else {
            $(".student-score-tabs").removeClass("on");
        }
        $(student_score_item).addClass("hide");
        $(student_score_item).eq(index).removeClass("hide");
    });

// 教师贡献度表格
    //表格一  活跃天数
    var myChart = echarts.init(document.getElementById('main'));
    var option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'shadow',
                label: {}
            },
            formatter: function (params) {
                var relVal = params[0].name + "<br/>";
                relVal += params[0].marker + params[0].seriesName + ' : ' + params[0].value + "<br/>";
                return relVal;
            }
        },
        grid: {
            top: 0,
            bottom: 20,
            left: '10px',
            right: '10px',
            containLabel: true,
        },
        xAxis: {
            type: 'value',
            axisTick: {
                show: false
            },
            axisLine: {
                lineStyle: {
                    color: '#284c95'
                }
            },
            splitLine: {
                lineStyle: {
                    color: '#284c95'
                }
            },
            axisLabel: {
                color: '#fff',
                fontSize: 12
            }
        },
        yAxis: {
            type: 'category',
            data: ['姓名一', '姓名二', '姓名三', '姓名四', '姓名五', '姓名六', '姓名七', '姓八', '姓九', '姓十'],
            axisLabel: {
                show: true,
                interval: 0, // 强制显示所有标签名
                textStyle: {
                    color: '#ffffff',
                    fontSize: 12
                }
            },
            // 去掉坐标刻度
            axisTick: {
                show: false
            }
        },
        series: [
            {
                name: '评价次数',
                type: 'bar',
                barWidth: '8',
                itemStyle: {
                    color: '#FFE23B' // 柱子颜色
                },
                label: {
                    normal: {
                        show: true,
                        position: 'right', // 柱状图字的位置
                        color: '#ffffff'  //柱状图字颜色,
                    }
                },
                data: [81, 74, 58, 52, 43, 36, 31, 31, 29, 29],
                zlevel: 1
            },
            // 下面是做背景用的
            {
                name: '背景',
                type: 'bar',
                barWidth: '8',
                itemStyle: {
                    color: '#19236b' // 柱子颜色
                },
                label: {
                    normal: {
                        show: false,
                        position: 'right', // 柱状图字的位置
                        color: '#ffffff'  //柱状图字颜色,
                    }
                },
                data: [100, 100, 100, 100, 100, 100, 100, 100, 100, 100],
                barGap: '-100%',
                zlevel: 0
            }
        ]
    };
    // myChart.setOption(option);

    

// 评价指标
    var evaluate_main_chart = echarts.init(document.getElementById('evaluate_main'));
    var evaluate_main_option = {
        tooltip: {
            show: true,
            trigger: 'axis',
            axisPointer: {
                type: 'shadow'
            },
            textStyle: {
                fontFamily: 'Microsoft YaHei'
            },
            // 改鼠标悬浮提示值格式
            formatter: function (params) {
                var relVal = params[0].name + "<br/>";
                relVal += params[0].marker + params[0].seriesName + ' : ' + Math.abs(params[0].value) + "<br/>";
                return relVal;
            }
        },
        legend: {
            right: '5%',
            top: '8%',
            itemWidth: 14,
            itemHeight: 14,
            itemGap: 20,
            icon: 'stack',
            textStyle: {
                color: '#fff',
                fontSize: '14',
                fontFamily: 'Microsoft YaHei'
            },
            data: ['违纪', '正向']
        },
        grid: [{
            show: false,
            left: '6%',
            top: '20%',
            bottom: "30",
            containLabel: false,
            width: '44%'
        }, {
            show: false,
            left: '50.5%',
            top: '20%',
            bottom: "30",
            width: '0%'
        }, {
            show: false,
            right: '6%',
            top: '20%',
            bottom: "30",
            containLabel: false,
            width: '44%'
        }],
        xAxis: [
            {
                type: 'value',
                inverse: true,
                show: true,
                axisLine: {
                    show: true,
                    lineStyle: {
                        color: '#284c95'
                    }
                },
                axisTick: {
                    show: false
                },
                splitLine: {
                    show: false
                },
                axisLabel: {
                    show: true,
                    margin: 4,
                    textStyle: {
                        color: '#fff',
                        fontSize: 10
                    },          // 把负轴的数值也变成正值
                    formatter: function (value) {
                        return Math.abs(value)
                    }
                }
            },
            {
                gridIndex: 1,
                show: false
            },
            {
                gridIndex: 2,
                type: 'value',
                show: true,
                axisLine: {
                    show: true,
                    lineStyle: {
                        color: '#284c95'
                    }
                },
                axisTick: {
                    show: false
                },
                splitLine: {
                    show: false
                },
                axisLabel: {
                    show: true,
                    margin: 4,
                    textStyle: {
                        color: '#fff',
                        fontSize: 10
                    },          // 把负轴的数值也变成正值
                    formatter: function (value) {
                        return Math.abs(value)
                    }
                }
            }],
        yAxis: [
            {
                type: 'category',
                inverse: true,
                position: 'left',
                axisLine: {
                    show: true,
                    lineStyle: {
                        color: '#284c95'
                    }
                },
                axisTick: {
                    show: false
                },
                axisLabel: {
                    show: false,
                    margin: 8,
                    textStyle: {
                        color: '#fff',
                        fontSize: 12
                    }
                },
                splitArea: {
                    interval: 0,
                    show: true,
                    areaStyle: {
                        color: ['#15245d', '#0f1535']
                    }
                },
                data: [1, 1, 1, 1, 1, 1, 1, 1, 1, 2],
            },
            {
                gridIndex: 1,
                type: 'category',
                inverse: false,
                position: 'right',
                axisLine: {
                    show: false
                },
                axisTick: {
                    show: false
                },
                axisLabel: {
                    show: false,
                    textStyle: {
                        color: '#9D9EA0',
                        fontSize: 12
                    }

                }
            },
            {
                gridIndex: 2,
                type: 'category',
                inverse: true,
                position: 'right',
                axisLine: {
                    show: false
                },
                axisTick: {
                    show: false
                },
                axisLabel: {
                    show: false,
                    textStyle: {
                        color: '#fff',
                        fontSize: 12
                    }

                },
                splitArea: {
                    interval: 0,
                    show: true,
                    areaStyle: {
                        color: ['#15245d', '#0f1535']
                    }
                },
                data: ['抽烟', '喝酒', '打人', '讲话', '迟到', '早退', '骂老师', '打同学', '起哄', '扔垃圾']
            }],

        series: [{
            name: '违纪',
            type: 'bar',
            barWidth: '12',
            label: {
                normal: {
                    show: false,
                    position: 'inside',
                    offset: [-15, 0],
                    formatter: '{b}',
                    align: 'right',
                    textStyle: {
                        color: '#fff',
                        fontSize: 10
                    }
                },
                emphasis: {
                    show: false
                }
            },
            itemStyle: {
                normal: {
                    color: '#3c7aeb'
                },
                emphasis: {
                    color: '#3c7aeb'
                }
            },
            data: [
                {value: 1, name: '玩游戏'},
                {value: 2, name: '吃零食'},
                {value: 3, name: '讲话'},
                {value: 4, name: '打人'},
                {value: 7, name: '骂老师'},
                {value: 3, name: '抄作业'},
                {value: 4, name: '作弊'},
                {value: 2, name: '讲话'},
                {value: 1, name: '不交作业'},
                {value: 0, name: '其他'}
            ]
        },

            {
                name: '正向',
                type: 'bar',
                barWidth: '12',
                xAxisIndex: 2,
                yAxisIndex: 2,
                label: {
                    normal: {
                        show: false,
                        position: 'left',
                        align: 'left',
                        offset: [15, 0],
                        formatter: '{b}',
                        textStyle: {
                            color: '#fff',
                            fontSize: 10
                        }
                    },
                    emphasis: {
                        show: false
                    }
                },
                itemStyle: {
                    normal: {
                        color: '#ff6400'
                    },
                    emphasis: {
                        color: '#ff6400'
                    }
                },
                data: [
                    {value: 1, name: '申请入党'},
                    {value: 2, name: '加入共青团'},
                    {value: 1, name: '照顾同学'},
                    {value: 6, name: '拾金不昧'},
                ]
            }
        ]


    };
    //evaluate_main_chart.setOption(evaluate_main_option);

// 评价行为分布
    var behavior_chart = echarts.init(document.getElementById('main_behavior'));
    var behavior_option = {
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)"
        },
        legend: {
            textStyle: {
                color: '#ffffff'
            },
            icon: 'rect',
            itemWidth: 12,
            itemHeight: 12,
            type: 'scroll',
            orient: 'horizontal',
            x: 'center',
            data: ['2017级', '2018级',]
        },
        series: [
            {
                name: '年级',
                type: 'pie',
                radius: ['40%', '64%'], // 设置圈的直径
                color: ['#e5337a', 'yellow'],// 设置圆的颜色
                avoidLabelOverlap: false,
                label: {
                    normal: {
                        show: false,
                        position: 'center',
                    },
                    emphasis: {
                        show: true,
                        textStyle: {
                            fontSize: '18',
                            fontWeight: 'bold'
                        }
                    }
                },
                labelLine: {
                    normal: {
                        show: false,
                    }
                },
                data: [
                    {value: 335, name: '2017级'},
                    {value: 310, name: '2018级'},
                ]
            }
        ]
    };
    // behavior_chart.setOption(behavior_option);
    
// 教学区、宿舍区
    var sex_chart = echarts.init(document.getElementById('main_sex'));
    var sex_option = {
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)"
        },
        legend: {
            textStyle: {
                color: '#ffffff'
            },
            orient: 'horizontal',
            x: 'center',
            data: ['教学', '宿舍'],
            icon: 'rect',
            itemWidth: 12,
            itemHeight: 12
        },
        series: [
            {
                name: '区域',
                type: 'pie',
                radius: ['40%', '64%'], // 设置圈的直径
                color: ['#3267f4', '#64f5a2'],// 设置圆的颜色
                avoidLabelOverlap: false,
                label: {
                    // 正常的样式
                    normal: {
                        show: false,
                        position: 'center',
                    },
                    // 选中后的样式
                    emphasis: {
                        show: true,
                        textStyle: {
                            fontSize: '18',
                            fontWeight: 'bold'
                        }
                    }
                },
                labelLine: {
                    normal: {
                        show: false,
                    }
                },
                data: [
                    {value: 335, name: '教学区'},
                    {value: 310, name: '宿舍区'},
                ]
            }
        ]
    };
    //sex_chart.setOption(sex_option);

// 评价分数走势
    var evaluate_chart = echarts.init(document.getElementById('evaluate'));
    var evaluate_option = {
        title: {},
        color: ['#2db7f5', '#ff6600', 'yellow'],    // 控制图例和线条颜色
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data: [],
            type: 'scroll',
            width: '220',
            right: '20px',
            top: '16px',
            icon: 'rect',
            itemWidth: 12,
            itemHeight: 12,
            textStyle: {
                color: '#fff'
            }
        },
        grid: {
            left: '3%',
            right: '5%',
            bottom: '0',
            containLabel: true
        },
        xAxis: {
            type: 'category',
            boundaryGap: false,
            data: [],
            axisLine: {
                lineStyle: {
                    color: '#284c95'
                }
            },
            splitLine: {
                lineStyle: {
                    color: '#284c95'
                }
            },
            axisTick: {
                show: false
            },
            axisLabel: {
                textStyle: {
                    color: '#ffffff'
                }
            }
        },
        yAxis: {
            type: 'value',
            axisLine: {
                lineStyle: {
                    color: '#284c95'
                }
            },
            splitLine: {
                show: false,
            },
            axisTick: {
                show: false
            },
            axisLabel: {
                textStyle: {
                    color: '#ffffff'
                }
            }
        },
        series: [
           
        ]
    };
    evaluate_chart.setOption(evaluate_option);

//});
