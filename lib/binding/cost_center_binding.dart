import 'package:accounting_app/controller/controller.dart';
import 'package:get/get.dart';

class CostCenterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CostCenterController>(() => CostCenterController());
  }
}
