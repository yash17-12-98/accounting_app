import 'package:get/get.dart';

import '../../../controller/controller.dart';
import '../../../repository/repository.dart';

class MainScheduleListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MasterFormRepository>(() => MasterFormRepository(Get.find()));

    Get.put<MainScheduleListController>(MainScheduleListController(Get.find()));
  }
}
