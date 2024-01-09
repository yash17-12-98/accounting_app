import 'package:get/get.dart';

import '../../../controller/controller.dart';
import '../../../repository/repository.dart';

class CostCenterFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MasterFormRepository>(() => MasterFormRepository(Get.find()));

    Get.put<CostCenterFormController>(CostCenterFormController(Get.find()));
  }
}
