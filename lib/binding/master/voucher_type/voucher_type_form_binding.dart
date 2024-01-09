import 'package:get/get.dart';

import '../../../controller/controller.dart';
import '../../../repository/repository.dart';

class VoucherTypeFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MasterFormRepository>(() => MasterFormRepository(Get.find()));

    Get.put<VoucherTypeFormController>(VoucherTypeFormController(Get.find()));
  }
}
