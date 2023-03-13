import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:moz888bet/app/ui/wallet/boxes/balancestatus/graphicbalance/components/monthChartStarts.dart';

class GraphigBalance extends StatelessWidget {
  final Size size;
  GraphigBalance({
    required this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MonthlyChartStats();
  }
}
