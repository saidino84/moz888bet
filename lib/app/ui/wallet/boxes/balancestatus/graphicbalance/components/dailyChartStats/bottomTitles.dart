import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moz888bet/app/controllers/AppController.dart';

SideTitleWidget getBottomSisdeWidget(double value, TitleMeta meta) {
  AppController controller = Get.find<AppController>();
  String title = '';
  switch (value.toInt()) {
    case 0:
      title = 'Dom';
      break;
    case 1:
      title = 'Seg';
      break;
    case 2:
      title = 'Terc';
      break;
    case 3:
      title = 'Quart';
      break;
    case 4:
      title = 'Quint';
      break;
    case 5:
      title = 'Sext';
      break;
    case 6:
      title = 'Sabado';
      break;

    default:
      title = 'Dom';
      break;
  }
  return SideTitleWidget(child: Text(title), axisSide: meta.axisSide);
}
