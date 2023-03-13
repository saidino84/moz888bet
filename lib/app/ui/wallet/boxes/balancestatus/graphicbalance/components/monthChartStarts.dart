import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MonthlyChartStats extends StatelessWidget {
  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );

    Widget text;
    switch (value.toInt()) {
      case 2:
        text = const Text(
          'MAR',
          style: style,
        );
        break;
      case 5:
        text = const Text(
          'JUN',
          style: style,
        );
        break;

      case 8:
        text = const Text(
          'SEP',
          style: style,
        );
        break;
      case 8:
        text = const Text(
          'SEP',
          style: style,
        );
        break;
      default:
        text = text = const Text(
          '*',
          style: style,
        );
        break;
    }
    return SideTitleWidget(child: text, axisSide: meta.axisSide);
  }

  Widget leftTitleWidget(double value, TitleMeta mata) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );

    String text;
    switch (value.toInt()) {
      case 2:
        text = '10k';

        break;
      case 5:
        text = '30k';

        break;

      case 8:
        text = '10k';

        break;
      case 8:
        text = '50k';

        break;
      default:
        return Container();
    }
    return Text(text);
  }

  LineChartData mainData() {
    List<Color> gradientColors = [
      // AppColors.contentColors.Cyan,
      Colors.cyan,
      // AppColors.contentColorBlue,
      Colors.blueAccent,
    ];
    return LineChartData(
        gridData: FlGridData(
          show: true,
          drawVerticalLine: true,
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
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
            bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 30,
                    interval: 1,
                    getTitlesWidget: bottomTitleWidgets)),
            leftTitles: AxisTitles(
                sideTitles: SideTitles(
                    showTitles: true,
                    interval: 1,
                    getTitlesWidget: leftTitleWidget,
                    reservedSize: 42))),
        borderData: FlBorderData(
            show: true, border: Border.all(color: Color(0xff37434d))),
        minX: 0,
        maxX: 11,
        minY: 0,
        maxY: 6,
        lineBarsData: [
          LineChartBarData(
              spots: const [
                FlSpot(0, 2),
                FlSpot(2.6, 2),
                FlSpot(4.9, 5),
                FlSpot(6.8, 3.1),
                FlSpot(8.0, 4),
                FlSpot(9.5, 3),
                FlSpot(11, 4),
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
        Padding(
          padding: EdgeInsets.only(right: 18, left: 12, top: 24, bottom: 12),
          child: LineChart(mainData()),
        ),
      ],
    );
  }
}
