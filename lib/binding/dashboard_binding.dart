import 'package:get/get.dart';

import '../controller/controller.dart';

class DashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<DashboardController>(DashboardController(Get.find()));
  }
}
