import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moz888bet/app/controllers/AppController.dart';
import 'package:moz888bet/app/ui/wallet/wallet_toolbar/components/month_dropdown.dart';

import 'dailyChartStats/bottomTitles.dart';

class DailyChartStats extends StatelessWidget {
  Widget leftTitleWidget(double value, TitleMeta mata) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );

    String text;
    switch (value.toInt()) {
      case 1:
        text = '1';
        break;
      // case 2:
      //   text = '2';

      //   break;
      case 5:
        text = '5';

        break;

      // case 8:
      //   text = '8';

      //   break;
      case 10:
        text = '10';

        break;
      default:
        return Container();
    }
    return Text(text);
  }

  LineChartData mainData() {
    List<Color> gradientColors = [
      // AppColors.contentColors.Cyan,
      // AppColors.contentColorBlue,
      Colors.blueAccent,
      // Colors.yellowAccent,
      Colors.red,
    ];
    return LineChartData(
        gridData: FlGridData(
          show: false,
          drawVerticalLine: false,
          horizontalInterval: 1,
          verticalInterval: 1,
          getDrawingHorizontalLine: (value) {
            return FlLine(color: Colors.cyan, strokeWidth: 1);
          },
          getDrawingVerticalLine: (value) {
            return FlLine(color: Colors.amberAccent, strokeWidth: 1);
          },
        ),
        titlesData: FlTitlesData(
            show: true,
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 30,
                interval: 1,
                getTitlesWidget: ((value, meta) =>
                    getBottomSisdeWidget(value, meta)),
              ),
            ),
            leftTitles: AxisTitles(
                sideTitles: SideTitles(
                    showTitles: true,
                    interval: 1,
                    getTitlesWidget: leftTitleWidget,
                    reservedSize: 42))),
        borderData: FlBorderData(
            show: true, border: Border.all(color: Color(0xff37434d))),
        minX: 1, //mininum de ponto no eixo x=1 como domingo
        maxX: 7, //e maximo de dias sao 7
        minY: 0, //minimum de transferecias por dia 'e 0,
        maxY: 10, //Maximo de transfer por dia sao 7
        lineBarsData: [
          LineChartBarData(
              spots: const [
                FlSpot(1, 4), //Domingo Quatro Transfers
                FlSpot(2, 0), //Segunda 0 trans
                FlSpot(3, 6),
                FlSpot(4, 4),
                FlSpot(5, 6),
                FlSpot(6, 2),
                FlSpot(7, 4),
              ],
              //Definir se quer que apareca curvas ou nao
              isCurved: true,
              gradient: LinearGradient(colors: gradientColors),
              barWidth: 5,
              isStrokeCapRound: true,
              dotData: FlDotData(
                  show: true //set to false if you dont want to see dots
                  ),
              belowBarData: BarAreaData(
                  show: true,
                  gradient: LinearGradient(
                      colors: gradientColors
                          .map((color) => color.withOpacity(0.3))
                          .toList())))
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            right: 20,
            child: Row(
              children: [
                Text('SEMANA'),
                MonthDropDownMenu(controller: Get.find<AppController>()),
              ],
            )),
        Padding(
          padding: EdgeInsets.only(right: 18, left: 12, top: 34, bottom: 12),
          child: LineChart(mainData()),
        ),
      ],
    );
  }
}
