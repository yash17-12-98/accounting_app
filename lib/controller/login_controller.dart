import 'package:accounting_app/app/functions.dart';
import 'package:accounting_app/repository/user_auth_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../resources/resources.dart';
import 'base_controller.dart';

class LoginController extends BaseController {
  final UserAuthRepository userAuthRepository;
  final mobileController = TextEditingController();
  final mPinController = TextEditingController();

  final FocusNode mobileFocusNode = FocusNode();
  final FocusNode mPinFocusNode = FocusNode();

  LoginController(this.userAuthRepository);

  onLogin() {
    FocusManager.instance.primaryFocus?.unfocus();
    final isValid = userAuthRepository.checkValidUser(
        int.parse(mobileController.text), int.parse(mPinController.text));
    if (isValid) {
      Get.toNamed(Routes.dashBoardRoute);
      showSnackBar(AppStrings.authentication, AppStrings.loggedInSuccess);
    }
    showSnackBar(AppStrings.authentication, AppStrings.loggedInFail);
  }
}
