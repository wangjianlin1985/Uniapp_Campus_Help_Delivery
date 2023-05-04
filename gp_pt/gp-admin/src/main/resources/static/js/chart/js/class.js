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
	

    // 点击全局概览弹出菜单
    $(".menu-box-overview .title").click(function () {
        $(".menu-list-box").removeClass("hide");
        window.event ? window.event.cancelBubble = true : e.stopPropagation();
        $("body").click(function () {
            $(".menu-list-box").addClass("hide");
        });
    });


    // 评价指标Top10
    var pjzb_chart = echarts.init(document.getElementById('pjzb'));
    var pjzb_option = {
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
        grid: [
            {
                show: false,
                left: '6%',
                top: '20%',
                bottom: "30",
                containLabel: false,
                width: '44%'
            },
            {
                show: false,
                left: '50.5%',
                top: '20%',
                bottom: "30",
                width: '0%'
            },
            {
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
                    },
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
                    },
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
   //  pjzb_chart.setOption(pjzb_option);


    // 班级分数走势
    var bjfs_chart = echarts.init(document.getElementById('bjfs'));
    var bjfs_option = {
        title: {},
        color: ['#2db7f5', '#ff6600', 'yellow'],    // 控制图例和线条颜色
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data: [ '班级分值','系部平均分'],
            right: 20,
            top: 16,
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
            bottom: '10%',
            containLabel: true
        },
        xAxis: {
            type: 'category',
            boundaryGap: false,
            data: ['2019-04', '2019-06', '2019-08', '2019-10'],
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
            {
                name: '班级分值',
                type: 'line',
                stack: '总量',
                data: [89, 90, 100, 90, 100, 89, 98]
            },
            {
                name: '系部平均分',
                type: 'line',
                stack: '总量',
                data: [20,38,78,48,59,29]
            }
        ]
    };
    //bjfs_chart.setOption(bjfs_option);


    /** 学生分数散点图
    
    var xsfs_chart = echarts.init(document.getElementById('xsfs'));

    var result = [
    {
        data: [[2, 0, 1], [2, 1, 1], [2, 2, 1], [2, 3, 2], [2, 4, 4], [2,4, 17], [2, 6, 1], [2, 7, 1], [2, 8, 2]],
        days: "2019-08",
        hours: [79, 81, 84, 87, 88, 89, 90, 91, 92]
    }, {
    	data: [[2, 0, 1], [2, 1, 1], [2, 2, 1], [2, 3, 2], [2, 4, 4], [2, 5, 7], [2, 6, 1], [2, 7, 1], [2, 8, 2]],
        days: "2019-09",
        hours: [79, 81, 85, 87, 88, 89, 90, 91, 92]
    }, {
    	data: [[2, 0, 1], [2, 1, 1], [2, 2, 1], [2, 3, 2], [2, 4, 4], [2, 5, 7], [2, 6, 1], [2, 7, 1], [2, 8, 2]],
        days: "2019-10",
        hours: [79, 81, 85, 87, 88, 89, 90, 91, 92]
    }, {
    	data: [[2, 0, 1], [2, 1, 1], [2, 2, 1], [2, 3, 2], [2, 4, 4], [2, 5, 7], [2, 6, 1], [2, 7, 1], [2, 8, 2]],
        days: "2019-11",
        hours: [79, 81, 85, 87, 88, 89, 90, 91, 92]
    }, {
    	data: [[2, 0, 1], [2, 1, 1], [2, 2, 1], [2, 3, 2], [2, 4, 4], [2, 5, 7], [2, 6, 1], [2, 7, 1], [2, 8, 2]],
        days: "2019-12",
        hours: [79, 81, 85, 87, 88, 89, 90, 91, 92]
    }];
    var hours = [];
    var days = [];
    var data = [];
    var begin = 0;
    var end = 0;
    var maxvalue = 0;
    var w = 0;
    for (var p = result.length - 1; p >= 0; p--) {
        if (p > 5) {
            continue;
        }
        days.push(result[p].days);
        var tempbegin = result[p].hours[0] * 0.9;
        var tempend = result[p].hours[result[p].hours.length - 1] * 1.1;
        var h = [];
        if (isNaN(tempbegin)) {
            tempbegin = 0;
        }
        if (isNaN(tempend)) {
            tempend = 100;
        }
        for (var i = 0; i < 20; i++) {
            h.push(parseInt(tempbegin + ((tempend - tempbegin) / 20) * i));
        }
        hours.push(result[p].hours);
        if (p == 0) {
            begin = tempbegin;
            end = tempend;
        }

        if (tempbegin < begin) {
            begin = tempbegin;
        }
        if (tempend > end) {
            end = tempend;
        }
        for (var q in result[p].data) {
            if (result[p].data[q][2] > maxvalue) {
                maxvalue = result[p].data[q][2];
            }
            result[p].data[q][0] = w;
            data.push(result[p].data[q])
        }
        w++;
    }

    var xsfs_option = {
        baseOption: {
            tooltip: {
                position: 'right',
                formatter: function (params) {
                    return params.name + "分 : " + params.data[1] + "人";
                }
            },
            title: [],
            singleAxis: [],
            series: []
        },
        media: [{
            query: {
                maxHeight: 200
            },
            option: {
                title: [],
                singleAxis: []
            }
        }]
    };
    echarts.util.each(days, function (day, idx) {
        xsfs_option.baseOption.title.push({
            textBaseline: 'middle',
            top: (idx + 0.5) * 100 / days.length + '%',
            text: day,
            textStyle: {
                color: '#fff',
                fontSize: 12,
                fontWeight: 100
            }
        });
        xsfs_option.baseOption.singleAxis.push({
            left: 80,
            type: 'category',
            boundaryGap: false,
            data: (function () {
                return hours[idx]
            })(),
            top: (idx * 100 / days.length + 5) + '%',
            height: (80 / days.length - 10) + '%',
            width: '82.8%',
            axisLabel: {
                interval: (function () {
                    return Math.round(hours[idx].length / 10);
                })(),
                textStyle: {
                    color: '#fff',
                    fontSize: 10,
                    fontWeight: 100
                }
            },
            splitLine: {
                show: false
            },
            axisLine: {
                lineStyle: {
                    color: '#3c7aeb',
                    width: 0.5
                }
            }
        });
        xsfs_option.baseOption.series.push({
            singleAxisIndex: idx,
            coordinateSystem: 'singleAxis',
            type: 'scatter',
            data: [],
            itemStyle: {
                normal: {
                    color: function () {
                        var colorList = [
                            '#3c7aeb', "#ff008e", "#ffdb5c"
                        ];
                        return colorList[idx % 3]
                    }
                }
            },
            symbolSize: function (dataItem) {
                var symbolsize = parseFloat(dataItem[1] / (maxvalue / 20));
                if (symbolsize < 5) {
                    symbolsize = 5;
                }
                if (symbolsize > 30) {
                    symbolsize = 30;
                }
                return symbolsize;
            }
        });
        xsfs_option.media[0].option.title.push({
            top: (idx + 0.5) * 95 / days.length + '%'
        });
        xsfs_option.media[0].option.singleAxis.push({
            top: (idx * 95 / days.length + 7) + '%',
            width: '75.5%',
            height: (80 / days.length - 10) + '%'
        });
    });
    echarts.util.each(data, function (dataItem) {
        xsfs_option.baseOption.series[dataItem[0]].data.push([dataItem[1], dataItem[2]]);
    });

    xsfs_chart.setOption(xsfs_option);
    
    */
    
    
//});