import 'package:accounting_app/controller/controller.dart';
import 'package:get/get.dart';

import '../repository/repository.dart';

class DivisionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MasterFormRepository>(() => MasterFormRepository(Get.find()));

    Get.lazyPut<DivisionController>(() => DivisionController(Get.find()));
  }
}
