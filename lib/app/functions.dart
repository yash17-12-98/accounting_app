import 'package:accounting_app/app/boxes.dart';
import 'package:accounting_app/resources/color_manager.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

import '../model/model.dart';

var uuid = const Uuid();

showSnackBar(String title, String message) {
  Get.snackbar(
    title,
    message,
    colorText: ColorManager.white,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: ColorManager.primary,
  );
}

addLocalUserAuth() async {
  final box = HiveBox.userBox();
  final user = User(
      firstName: 'Test',
      lastName: 'User',
      mobile: '123456',
      deviceId: 'samsung-sdk',
      mPin: '123456');
  await box.clear();
  await box.add(user);
}
