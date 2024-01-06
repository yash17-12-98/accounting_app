import 'package:accounting_app/services/local_database/database_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../resources/resources.dart';
import 'base_controller.dart';

class LoginController extends BaseController {
  final DatabaseService appDataBaseService;
  final mobileController = TextEditingController();
  final mPinController = TextEditingController();

  final FocusNode mobileFocusNode = FocusNode();
  final FocusNode mPinFocusNode = FocusNode();

  LoginController(this.appDataBaseService);

  @override
  void onInit() {
    super.onInit();
  }

  onLogin() {
    FocusManager.instance.primaryFocus?.unfocus();
    final isValid = appDataBaseService.checkValidUser(
        int.parse(mobileController.text), int.parse(mPinController.text));
    if (isValid) {
      Get.toNamed(Routes.dashBoardRoute);
    }
  }
}
