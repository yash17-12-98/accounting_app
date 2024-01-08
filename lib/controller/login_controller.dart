import 'package:accounting_app/app/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../repository/repository.dart';
import '../resources/resources.dart';
import 'base_controller.dart';

class LoginController extends BaseController {
  final UserAuthRepository userAuthRepository;
  final mobileController = TextEditingController();
  final mPinController = TextEditingController();

  final FocusNode mobileFocusNode = FocusNode();
  final FocusNode mPinFocusNode = FocusNode();

  final formKey = GlobalKey<FormState>();

  LoginController(this.userAuthRepository);

  onLogin() async {
    if (formKey.currentState!.validate()) {
      FocusManager.instance.primaryFocus?.unfocus();

      final isValid = userAuthRepository.checkValidUser(
          mobileController.text, mPinController.text);

      if (isValid) {
        await userAuthRepository.updateUserAuthStatus(isLoggedIn: true);
        Get.offNamed(Routes.dashBoardRoute);
        showSnackBar(AppStrings.authentication, AppStrings.loggedInSuccess);
        return;
      }
      showSnackBar(AppStrings.authentication, AppStrings.loggedInFail);
    }
  }

  @override
  void onInit() {
    super.onInit();
  }
}
