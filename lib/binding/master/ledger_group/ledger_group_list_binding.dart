import 'package:get/get.dart';

import '../../../controller/controller.dart';
import '../../../repository/repository.dart';

class LedgerGroupListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MasterFormRepository>(() => MasterFormRepository(Get.find()));

    Get.put<LedgerGroupListController>(LedgerGroupListController(Get.find()));
  }
}
