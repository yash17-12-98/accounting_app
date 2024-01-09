import 'package:get/get.dart';

import '../../../controller/controller.dart';
import '../../../repository/repository.dart';

class MainScheduleFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MasterFormRepository>(() => MasterFormRepository(Get.find()));

    Get.put<MainScheduleFormController>(MainScheduleFormController(Get.find()));
  }
}
