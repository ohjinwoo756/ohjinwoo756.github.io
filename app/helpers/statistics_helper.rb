module StatisticsHelper

    # BAR CHART 모양 설정
    def results_by_barchart
        bar_chart results_by_barchart_charts_path, height: '650px', library: {
          title: {
              text: '혜택 항목별 점수',
              x: 35,
              margin: 10,
              align: "left",
              style: { "color": "#009933", "fontSize": "30px" }
          },
          chart: {
                backgroundColor: "#fbfcc3",
                borderRadius: 50,
                borderWidth: 2,
                align: "center",
                borderColor: "#ff9900",
                shadow: true,
                marginTop: 100,
          },
          tooltip: {valueSuffix: '점',
              backgroundColor: "rgba(234,245,1,1)",
              animation: true,
              borderRadius: 20,
              shadow: true
          },
          legend: { layout: 'vertical',
                    align: 'right',
                    verticalAlign: 'middle',
                    enabled: true },
          yAxis: {
             gridLineColor: "#ff9900",
             gridLineWidth: 1,
             allowDecimals: true,
             lineColor: "#cc00cc",
             lineWidth: 1,
             title: {
                 text: '점수',
                 margin: 15,
                 style: { "color": "#000000", "fontSize": "20px" }
             }
          },
          xAxis: {
              crosshair: {
                            color: "#ff9966",
                            dashStyle: "Solid",
                            snap: true,
                            width: 65,
                            zIndex: 2
                        },
             lineColor: "#cc00cc",
             lineWidth: 1,
             title: {
                 text: '혜택 항목',
                 margin: 15,
                 style: { "color": "#000000", "fontSize": "20px" }
             }
          }
        }
    end
    
    # PIE CHART 모양 설정
    def results_by_piechart
      pie_chart results_by_piechart_charts_path, height: '650px', library: {
          chart: {
            backgroundColor: "#fbfcc3",
            borderRadius: 50,
            borderWidth: 2,
            align: "center",
            borderColor: "#ff9900",
            shadow: true,
          },
          title: {
              text: '항목별 비율 비교',
              x: 35,
              margin: 10,
              align: "left",
              style: { "color": "#009933", "fontSize": "30px" }
          },
          tooltip: {
              valueSuffix: '점',
              backgroundColor: "rgba(234,245,1,1)",
              animation: true,
              borderRadius: 20,
              shadow: true
          },
          legend: { layout: 'vertical',
                    borderColor: "#fbcac3",
                    borderRadius: 10,
                    borderWidth: 10,
                    align: 'right',
                    verticalAlign: 'middle',
                    enabled: true },
           plotOptions: {
            pie: {
                allowPointSelect: false,
                animation: true,
                borderColor: "#e2fcc3",
                borderWidth: 20,
                cursor: 'pointer',
                dataLabels: {
                    backgroundColor: "#fbcac3",
                    borderColor: "#2bb7e4",
                    borderRadius: 10,
                    borderWidth: 2,
                    style: {
                        "color": "contrast",
                        "fontSize": "15px",
                        "textOutline": "0.5px contrast"
                    },
                    shadow: true,
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                  }
                }
              }
        }
    end
    
end