import 'package:accounting_app/app/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../repository/repository.dart';
import '../resources/resources.dart';
import 'base_controller.dart';

class LoginController extends BaseController {
  final UserAuthRepository userAuthRepository;
  final mobileController = TextEditingController(text: '123456');
  final mPinController = TextEditingController(text: '123456');

  final FocusNode mobileFocusNode = FocusNode();
  final FocusNode mPinFocusNode = FocusNode();

  final formKey = GlobalKey<FormState>();

  LoginController(this.userAuthRepository);

  onLogin() {
    if (formKey.currentState!.validate()) {
      FocusManager.instance.primaryFocus?.unfocus();

      final isValid = userAuthRepository.checkValidUser(
          int.parse(mobileController.text), int.parse(mPinController.text));

      if (isValid) {
        Get.toNamed(Routes.dashBoardRoute);
        showSnackBar(AppStrings.authentication, AppStrings.loggedInSuccess);
        return;
      }
      showSnackBar(AppStrings.authentication, AppStrings.loggedInFail);
    }
  }
}
