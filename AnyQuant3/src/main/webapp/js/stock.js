/**
 * Created by Lin on 2016/5/23.
 */

//LineChart
function createLineChart(id, rawData, title, legend) {
    var LineChart = echarts.init(document.getElementById(id));

    var allData = [];
    for (var i = 0; i < rawData.length; i++) {
        allData.push(splitLineData(rawData[i]));
    }

    function splitLineData(rawData) {
        var categoryData = [];
        var values = [];

        for (var i = 0; i < rawData.length; i++) {
            categoryData.push(rawData[i].splice(0, 1)[0]);
            values.push(rawData[i].splice(0, 1)[0]);

        }
        return {
            categoryData: categoryData,
            values: values
        };
    }

    function getSeries() {
        var series = [];
        for (var i = 0; i < legend.length; i++) {
            var item = {
                name: legend[i],
                type: 'line',
                data: allData[i].values
            };
            series.push(item);
        }
        ;
        return series;

    }

    var mySeries = getSeries();

    var option = {
        // title: {
        //     text: title
        // },

        legend: {
            data: legend
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'line'
            }
        },
        dataZoom: [

            {
                type: 'inside',
                start: 50,
                end: 100
            },
            {
                type: 'slider',
                show:false,
                start:50,
                end:100
            }
        ],
        xAxis: {
            type: 'category',
            boundaryGap: false,
            data: allData[0].categoryData,
            splitNumber:20
        },
        yAxis: {
            type: 'value',
            scale: true,
        },
        series: mySeries


    };
    LineChart.setOption(option);

    return LineChart;
}

//BarChart
function createBarChart(id, rawData, title, legend) {

    var data0 = splitBarData(rawData);

    function splitBarData(rawData) {
        var categoryData = [];
        var values0 = [];

        for (var i = 0; i < rawData.length; i++) {
            categoryData.push(rawData[i].splice(0, 1)[0]);
            values0.push(rawData[i].splice(0, 1)[0]);
        }
        return {
            categoryData: categoryData,
            values0: values0
        };
    }

    var BarChart = echarts.init(document.getElementById(id));

    var option = {
        // title: {
        //     text: title
        // },

        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'line'
            }
        },
        dataZoom: [
            {
                type: 'inside',
                start: 50,
                end: 100
            },
            {
                type: 'slider',
                show:true,
                start:50,
                end:100
            }
        ],
        legend: {
            data: legend
        },

        xAxis: {
            type: 'category',
            data: data0.categoryData,
            scale: true,
            boundaryGap: false,
            axisLine: {onZero: false},
            splitLine: {show: false},
            splitNumber: 40,
        },
        yAxis: {
            scale: true,
            boundaryGap: false,
            splitArea: {
                show: true
            },
            axisLabel:{
                formatter:'{value} 万'
            }
        },
        series: [{
            name: legend[0],
            type: 'bar',
            data: data0.values0
        }]
    };

    BarChart.setOption(option);

    return BarChart;
}

//kLineChart
function createKLine(id,kLineData) {

    function splitData(rawData) {
        var categoryData = [];
        var values = [];
        for (var i = 0; i < rawData.length; i++) {

            categoryData.push(rawData[i].splice(0, 1)[0]);
            values.push(rawData[i]);
        }
        return {
            categoryData: categoryData,
            values: values
        };
    }

    function calculateMA(dayCount) {
        var result = [];
        for (var i = 0, len = data0.values.length; i < len; i++) {
            if (i < dayCount) {
                result.push('-');
                continue;
            }
            var sum = 0;
            for (var j = 0; j < dayCount; j++) {
                // alert(data0.values[i-j][1]);
                sum += Number(data0.values[i - j][1]);
            }
            var temp = sum/dayCount;
            temp = temp.toFixed(2);
            result.push((temp));
        }
        return result;
    }

    var KLineChart = echarts.init(document.getElementById(id));
    var data0 = splitData(kLineData);

    option = {
        // title: {
        //     text: 'K线图',
        //     left: 0
        // },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'line'
            }
        },
        legend: {
            data: ['日K', 'MA5', 'MA10', 'MA20', 'MA30']
        },
        grid: {
            left: '10%',
            right: '10%',
            bottom: '15%'
        },
        xAxis: {
            type: 'category',
            data: data0.categoryData,
            scale: true,
            axisLine: {onZero: false},
            splitLine: {show: false},
        },
        yAxis: {
            scale: true,
            boundaryGap: false,
            splitArea: {
                show: true
            }
        },
        dataZoom: [
            {
                type: 'inside',
                start: 50,
                end: 100
            },
            {
                type: 'slider',
                show:false,
                start:50,
                end:100
            }
        ],
        series: [
            {
                name: '日K',
                type: 'candlestick',
                data: data0.values
            },
            {
                name: 'MA5',
                type: 'line',
                data: calculateMA(5),
                smooth: true,
                lineStyle: {
                    normal: {opacity: 0.5}
                }
            },
            {
                name: 'MA10',
                type: 'line',
                data: calculateMA(10),
                smooth: true,
                lineStyle: {
                    normal: {opacity: 0.5}
                }
            },
            {
                name: 'MA20',
                type: 'line',
                data: calculateMA(20),
                smooth: true,
                lineStyle: {
                    normal: {opacity: 0.5}
                }
            },
            {
                name: 'MA30',
                type: 'line',
                data: calculateMA(30),
                smooth: true,
                lineStyle: {
                    normal: {opacity: 0.5}
                }
            }

        ]
    };

    KLineChart.setOption(option);
    return KLineChart;
}

//pieChart
function createPieChart(id, title, legend, values) {
    // alert('id:'+id+' title:'+title);
    function getData() {
        var data = [];
        for (var i = 0; i < values.length; i++) {
            var item = {
                value: values[i],
                name: legend[i]
            };

            data.push(item);
        }

        return data;
    }

    var displayData = getData();
    var pieChart = echarts.init(document.getElementById(id));
    option = {
        // title: {
        //     text: title,
        //     x: 'center'
        // },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            x: 'center',
            y: 'bottom',
            data: legend
        },
        calculable: true,
        series: [
            {
                name: title,
                type: 'pie',
                radius: [50, 100],
                // label: {
                //     normal: {
                //         show: false
                //     },
                //     emphasis: {
                //         show: true
                //     }
                // },
                // lableLine: {
                //     normal: {
                //         show: false
                //     },
                //     emphasis: {
                //         show: true
                //     }
                // },
                data: displayData,
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
    pieChart.setOption(option);
}
