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

    // 评价次数分布
    var pjcs_chart = echarts.init(document.getElementById('pjcs'));
   
    var pjcs_option = {
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            right: 30,
            y: '35%',
            icon: 'rect',
            itemWidth: 12,
            itemHeight: 12,
            data: ['机电工程系 42.18%', '数控技术系 29.83%', '经贸管理系 26.67%', '综合基础部 1.25%'],
            textStyle: {
                color: '#fff'
            }
        },
        toolbox: {
            show: true,
            feature: {
                magicType: {
                    show: false
                }
            }
        },
        series: [
            {
                name: '评价次数',
                type: 'pie',
                radius: [30, 80],
                color: ['#9D48F0', '#FEA4F3', '#FF0081', '#FFA600'],// 设置圆的颜色
                center: ['30%', '60%'],
                roseType: 'area',
                clockwise: false,
                label: {
                    show: false
                },
                labelLine: {
                    show: false
                },
                data: [
                    {value: 42.18, name: '机电工程系 42.18%'},
                    {value: 29.83, name: '数控技术系 29.83%'},
                    {value: 26.67, name: '经贸管理系 26.67%'},
                    {value: 1.25, name: '综合基础部 1.25%'}
                ]
            }
        ]
    };    
    // pjcs_chart.setOption(pjcs_option);

    

    // 评价指标分布
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
        toolbox: {
            show: true,
            feature: {
                magicType: {
                    show: false
                }
            }
        },
        grid: [
            {
                show: false,
                left: '6%',
                top: 60,
                bottom: 20,
                containLabel: false,
                width: '44%'
            },
            {
                show: false,
                left: '50.5%',
                top: 60,
                bottom: 20,
                width: '0%'
            },
            {
                show: false,
                right: '6%',
                top: 60,
                bottom: 20,
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
    
    
    // pjzb_chart.setOption(pjzb_option);

   
    
    // 教师活跃天数
    var jshyts_chart = echarts.init(document.getElementById('jshyts'));
    var jshyts_option = {
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
            top: 10,
            bottom: 5,
            left: 20,
            right: 20,
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
                name: '活跃数',
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
    //jshyts_chart.setOption(jshyts_option);

    // 评价分数与排行
    var pjfs_chart = echarts.init(document.getElementById('pjfs'));
    var pjfs_option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                type: ''        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        legend: {
            icon: 'rect',
            itemWidth: 12,
            itemHeight: 12,
            right: 20,
            top: 0,
            data: ['总分', '加分', '扣分'],
            textStyle: {
                color: '#fff'
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            top: '24%',
            bottom: 0,
            containLabel: true
        },
        xAxis: [
            {
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
                    show: true,
                    textStyle: {
                        color: '#ffffff',
                        fontSize: 12
                    },
                    // 把负轴的数值也变成正值
                    formatter: function (value) {
                        return Math.abs(value)
                    }
                },
            }
        ],
        yAxis: [
            {
                type: 'category',
                axisTick: {show: false},
                data: ['综合基础部', '经贸管理系', '数控技术系', '机电工程系'],
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#ffffff',
                        fontSize: 12
                    }
                },

            }
        ],
        series: [
            {
                name: '总分',
                type: 'bar',
                barWidth: 8,
                itemStyle: {
                    color: '#FF0081'
                },
                label: {
                    normal: {
                        show: true,
                        position: 'right',
                        color: '#fff'
                    }
                },
                data: [200, 170, 240, -10]
            },
            {
                name: '加分',
                type: 'bar',
                barWidth: 8,
                itemStyle: {
                    color: '#FFE23B'
                },
                stack: '总量',
                label: {
                    normal: {
                        show: false
                    }
                },
                data: [320, 302, 341, 374]
            },
            {
                name: '扣分',
                type: 'bar',
                barWidth: 8,
                itemStyle: {
                    color: '#4E60FE'
                },
                stack: '总量',
                label: {
                    normal: {
                        show: false
                    }
                },
                data: [-120, -132, -101, -384, 0]
            }
        ]
    };
    //pjfs_chart.setOption(pjfs_option);

    // 评价分数走势
    var pjfszs_chart = echarts.init(document.getElementById('pjfszs'));
    var pjfszs_option = {
        title: {},
        color: ['#2db7f5', '#ff6600', 'yellow'],    // 控制图例和线条颜色
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data: ['邮件营销', '联盟广告', '视频广告', '直接访问'],
            type: 'scroll',
            width: 240,
            right: 30,
            top: 0,
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
            top: '24%',
            bottom: 0,
            containLabel: true
        },
        xAxis: {
            type: 'category',
            boundaryGap: false,
            data: [
            	   '2019-01', '2019-02', '2019-03', '2019-04','2019-05', '2019-06', '2019-07', '2019-08','2019-09', '2019-10',
            	   '2019-11', '2019-12', '2019-13', '2019-14','2019-15', '2019-16', '2019-17', '2019-18','2019-19', '2019-20',
            	   '2019-21', '2019-22', '2019-23', '2019-24','2019-25', '2019-26', '2019-27', '2019-28','2019-29', '2019-30',
            	   '2019-31'
            	],
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
                name: '邮件营销',
                type: 'line',
                stack: '总量',
                data: [89, 70, 7, 90, 100, 89, 98,90,80,70,
                	89, 90, 100, 90, 100, 89, 98,90,80,70,
                	89, 90, 100, 90, 100, 89, 98,90,80,70,98]
            },
            {
                name: '联盟广告',
                type: 'line',
                stack: '总量',
                data: [89, 90, 100, 90, 100, 89, 98,90,80,70,
                	89, 90, 110, 90, 100, 89, 98,90,80,70,
                	89, 90, 100, 90, 100, 89, 98,90,80,70,98]
            },
            {
                name: '视频广告',
                type: 'line',
                stack: '总量',
                data: [89, 90, 100, 90, 100, 89, 98,90,80,70,
                	89, 90, 100, 90, 100, 89, 98,90,80,70,
                	89, 90, 100, 90, 100, 89, 98,90,80,70,98]
            },
            {
                name: '直接访问',
                type: 'line',
                stack: '总量',
                data: [89, 90, 100, 90, 100, 89, 98,90,80,70,
                	89, 90, 100, 90, 100, 89, 98,90,80,70,
                	89, 90, 100, 90, 100, 89, 98,90,80,70,98]
            }
        ]
    };
    //pjfszs_chart.setOption(pjfszs_option);

    // 登录分布
    // 图表1
    var dlfb_js_chart = echarts.init(document.getElementById('dlfb_js'));
    var dlfb_js_option = {
        color: ['#FF0081'],
        tooltip: {
            trigger: 'axis',
            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        legend: {
            show: true,
            icon: 'rect',
            itemWidth: 12,
            itemHeight: 12,
            textStyle: {
                color: '#fff'
            },
            right: 20,
            top: 100,
            align: 'left',
            padding: 0,
        },
        grid: {
            left: '3%',
            right: '14%',
            top: 60,
            bottom: 0,
            containLabel: true
        },
        xAxis: {    
            type: 'category',
            // data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
            axisTick: {
                show: false,
                alignWithLabel: true
            },
            axisLabel: {
                color: '#fff',
                interval: 0,
                rotate: 40
            },
            axisLine: {
                lineStyle: {
                    color: '#284c95'
                }
            } 
        },
        yAxis: {
                type: 'value',
                axisTick: {
                    show: false
                },
                axisLine: {
                    lineStyle: {
                        color: '#284c95'
                    }
                },
                // 设置底部颜色
                splitArea: {
                    show: true,
                    areaStyle: {
                        color: ['#19236b', 'transparent']
                    }
                },
                splitLine: {
                    show: false
                },
                axisLabel: {
                    color: '#fff'
                }
            },
        series: [
            {
                name: '教师',
                type: 'bar',
                barWidth: 10,
                label: {
                    normal: {
                        show: true,
                        position: 'top',
                        fontSize: 10,
                        color: '#fff'
                    }
                },
                data: [10, 52, 200, 234, 290, 230, 220, 35, 28, 129, 30, 90]
            }
        ]
    };
    //dlfb_js_chart.setOption(dlfb_js_option);
    // 图表2
    var dlfb_xs_chart = echarts.init(document.getElementById('dlfb_xs'));
    var dlfb_xs_option = {
        color: ['#FFE23B'],
        tooltip: {
            trigger: 'axis',
            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        legend: {
            show: true,
            icon: 'rect',
            itemWidth: 12,
            itemHeight: 12,
            textStyle: {
                color: '#fff'
            },
            right: 20,
            bottom: 90,
            align: 'left',
            padding: 0,
        },
        grid: {
            left: '3%',
            right: '14%',
            top: 0,
            bottom: 30,
            containLabel: true
        },
        xAxis: [
            {
                type: 'category',
                position: 'top',
                //data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
                axisTick: {
                   show: false
                },
                axisLabel: {
                    show: false
                },
                axisLine: {
                    lineStyle: {
                        color: '#284c95'
                    }
                }
            }
        ],
        yAxis: [
            {
                type: 'value',
                // 倒置y轴
                inverse: true,
                axisTick: {
                    show: false
                },
                axisLine: {
                    lineStyle: {
                        color: '#284c95'
                    }
                },
                // 设置底部颜色
                splitArea: {
                    show: true,
                    areaStyle: {
                        color: ['#19236b', 'transparent']
                    }
                },
                splitLine: {
                    show: false
                },
                axisLabel: {
                    color: '#fff'
                }
            }
        ],
        series: [
            {
                name: '学生',
                type: 'bar',
                barWidth: 10,
                label: {
                    normal: {
                        show: true,
                        position: 'bottom',
                        fontSize: 10,
                        color: '#fff'
                    }
                },
                data: [10, 52, 200, 234, 290, 230, 220, 35, 28, 129, 30, 90]
            }
        ]
    };
    //dlfb_xs_chart.setOption(dlfb_xs_option);
//});