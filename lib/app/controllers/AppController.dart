import 'package:get/state_manager.dart';
import 'package:moz888bet/app/data/models/meses.dart';

class AppController extends GetxController {
  RxInt _currentMonthId = DateTime.now().month.obs;
  List<Month> get meses => <Month>[
        Month.JANUARY,
        Month.FEBRUARY,
        Month.MARCH,
        Month.APRIL,
        Month.MAY,
        Month.JUNE,
        Month.JULY,
        Month.AUGUST,
        Month.SEPTEMBER,
        Month.OCTOBER,
        Month.NOVEMBER,
        Month.DECEMBER,
      ];

  Month get curentMountId => meses[_currentMonthId.value];
  void changeMonth(Month mouth) {
    _currentMonthId.value = mouth.index;
  }
}
