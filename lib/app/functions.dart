import 'package:accounting_app/resources/color_manager.dart';
import 'package:get/get.dart';

showSnackBar(String title, String message) {
  Get.snackbar(
    title,
    message,
    colorText: ColorManager.white,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: ColorManager.primary,
  );
}
