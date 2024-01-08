import 'package:accounting_app/repository/master_form_repository.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class LedgerTypeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MasterFormRepository>(() => MasterFormRepository(Get.find()));
    Get.lazyPut<LedgerTypeController>(() => LedgerTypeController(Get.find()));
  }
}
