import 'package:accounting_app/controller/controller.dart';
import 'package:get/get.dart';

class DivisionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DivisionController>(() => DivisionController());
  }
}
