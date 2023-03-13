import 'package:get/get.dart';
import 'package:moz888bet/app/controllers/AppController.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AppController());
  }
}
