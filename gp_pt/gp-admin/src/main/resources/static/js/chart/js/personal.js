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
	

    // 点击个人概览弹出菜单
    $(".menu-box-personal .title").click(function () {
        $(".menu-list-box").removeClass("hide");
        window.event ? window.event.cancelBubble = true : e.stopPropagation();
        $("body").click(function () {
            $(".menu-list-box").addClass("hide");
        });
    });

    // 综合素质
    var zhsz_chart = echarts.init(document.getElementById('zhsz'));
    var zhsz_option = {
        title: {
            show: false
        },
        tooltip: {
            axisPointer: {
                show: true
            }
        },
        legend: {
            show: false
        },
        radar: {
            radius: 100,
            name: {
                // 文字设置
                textStyle: {
                    fontSize: 14,
                    color: '#fff',
                    backgroundColor: 'transparent',
                    borderWidth: 1,
                    borderColor: '#284c95',
                    borderRadius: 3,
                    padding: [5, 8]
                }
            },
            splitLine: {
                lineStyle: {
                    color: '#284c95'
                }
            },
            axisLine: {
                show: false
            },
            // 雷达图分割颜色
            splitArea: {
                areaStyle: {
                    color: [
                        'rgba(114, 172, 209, 0.5)',
                        'rgba(114, 172, 209, 0.4)',
                        'rgba(114, 172, 209, 0.3)',
                        'rgba(114, 172, 209, 0.2)',
                        'rgba(114, 172, 209, 0.1)'
                    ]
                }
            },
            indicator: [
                {name: '品德之星', max: 100},
                {name: '智慧之星', max: 100},
                {name: '艺术之星', max: 100},
                {name: '体育之星', max: 100},
                {name: '能力之星', max: 100},
                {name: '技能之星', max: 100}
            ]
        },
        series: [{
            name: '预算 vs 开销（Budget vs spending）',
            type: 'radar',
            // 选择数据区域线条颜色
            lineStyle: {
                color: '#db4675'
            },
            data: [
                {
                    value: [80, 60, 60, 60, 60, 60],
                    name: '综合素质',
                    // 选择数据区域颜色
                    areaStyle: {
                        normal: {
                            color: '#7D0064',
                            opacity: .4
                        }
                    }
                }
            ]
        }]
    };
    //zhsz_chart.setOption(zhsz_option);

    // 个人得分走势
    var pjfszs_chart = echarts.init(document.getElementById('pjfszs'));
    var pjfszs_option = {
        title: {},
        color: ['#2db7f5', '#ff6600', 'yellow'],    // 控制图例和线条颜色
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data: ['个人分值', '班级平均分', '系部平均分'],
            top: 15,
            right: 20,
            icon: 'rect',
            itemWidth: 14,
            itemHeight: 14,
            textStyle: {
                color: '#fff',
                fontSize: 14
            }
        },
        grid: {
            left: '3%',
            right: '5%',
            bottom: '5%',
            containLabel: true
        },
        xAxis: {
            type: 'category',
            boundaryGap: false,
            data: ['2019-04', '2019-05', '2019-06', '2019-07', '2019-08', '2019-09', '2019-10'],
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
                show: true,
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
            {
                name: '个人分值',
                type: 'line',
                stack: '总量',
                data: [89, 90, 100, 90, 100, 89, 98]
            },
            {
                name: '班级平均分',
                type: 'line',
                stack: '总量',
                data: [89, 90, 100, 90, 100, 89, 98]
            },
            {
                name: '专业平均分',
                type: 'line',
                stack: '总量',
                data: [89, 90, 100, 90, 100, 89, 98]
            }
        ]
    };
    //pjfszs_chart.setOption(pjfszs_option);

    
    
    // 评价指标分布
    var pjzb_chart = echarts.init(document.getElementById('pjzb'));
    var pjzb_option = {
        title: {show: false},
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            type: 'scroll',
            width: 200,
            height: 160,
            orient: 'vertical',
            right: 20,
            y: 70,
            icon: 'rect',
            itemWidth: 14,
            itemHeight: 14,
            data: ['玩游戏 5%', '吃零食', '讲话', '打人', '骂老师',
                '抄作业', '作弊', '讲话', '不交作业', '其他'],
            textStyle: {
                color: '#fff',
                fontSize: 14
            },
            formatter: function(name){
            　 return name.length>20?name.substr(0,20)+"...":name;
            }
        },
        series: [
            {
                name: '指标次数占比',
                type: 'pie',
                radius: '55%',
                center: ['35%', '40%'],
                color: ['#4A5CF1', '#9D48F0', '#00CCF0',
                    '#FEA4F3', '#FF0081', '#FFA600', '#00C653', '#00FFB6', '#00CCF0'
                ],
                // 改变引线文字颜色
                label: {
                    normal: {
                        textStyle: {
                            color: '#fff'
                        }
                    }
                },
                data: [
                    {value: 535, name: '玩游戏 5%'},
                    {value: 210, name: '吃零食'},
                    {value: 834, name: '讲话'},
                    {value: 935, name: '打人'},
                    {value: 1548, name: '骂老师'},
                    {value: 1548, name: '抄作业'},
                    {value: 1548, name: '作弊'},
                    {value: 1148, name: '讲话'},
                    {value: 1258, name: '不交作业'},
                    {value: 958, name: '其他'}
                ],
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };
    //pjzb_chart.setOption(pjzb_option);


    // 评价指标Top10
    var pjzbTop_chart = echarts.init(document.getElementById('pjzbTop'));
    var pjzbTop_option = {
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

        series: [
            {
                name: '违纪',
                type: 'bar',
                barWidth: '18',
                label: {
                    normal: {
                        show: true,
                        position: 'insideRight',
                        offset: [-5, 0],
                        // formatter: '{b}',
                        formatter: function (params) {
                            var relVal = params.data.name;
                            if (params.data.value == 0) {
                                relVal = ''
                            }
                            return relVal;
                        },
                        textStyle: {
                            color: '#fff',
                            fontSize: 12
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
                    {value: 2, name: '骂老师'},
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
                barWidth: '18',
                xAxisIndex: 2,
                yAxisIndex: 2,
                label: {
                    normal: {
                        show: true,
                        position: 'left',
                        align: 'left',
                        offset: [15, 0],
                        // formatter: '{b}',
                        formatter: function (params) {
                            var relVal = params.data.name;
                            if (params.data.value == 0) {
                                relVal = ''
                            }
                            return relVal;
                        },
                        textStyle: {
                            color: '#fff',
                            fontSize: 12
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
                    {value: 4, name: '拾金不昧'},
                ]
            }
        ]


    };
    //pjzbTop_chart.setOption(pjzbTop_option);
//});