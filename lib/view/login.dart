import 'package:accounting_app/app/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';
import '../resources/resources.dart';
import '../widgets/widget.dart';

class Login extends GetView<LoginController> {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(ImageAssets.primaryBackground),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
            child: Card(
              color: ColorManager.white,
              elevation: AppSize.s18,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 35),
                      Image.asset(ImageAssets.appLogo),
                      const SizedBox(height: 35),
                      Text(AppStrings.loginTitle,
                          style: Theme.of(context).textTheme.titleLarge),
                      const SizedBox(height: 15),
                      Text(AppStrings.loginSubTitle,
                          style: Theme.of(context).textTheme.titleSmall),
                      const SizedBox(height: 30),
                      AppTextField(
                          controller: controller.mobileController,
                          focus: controller.mobileFocusNode,
                          validator: Validator.checkPhoneNumber,
                          hintText: AppStrings.phoneNumber,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.phone,
                          onFieldSubmitted: (_) =>
                              FocusScope.of(context).nextFocus()),
                      const SizedBox(height: 10),
                      AppTextField(
                          controller: controller.mPinController,
                          focus: controller.mPinFocusNode,
                          validator: Validator.checkMPin,
                          hintText: AppStrings.mPin,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.number),
                      const SizedBox(height: 20),
                      MaterialButton(
                        onPressed: controller.onLogin,
                        color: ColorManager.primary,
                        textColor: ColorManager.white,
                        child: const Text(AppStrings.login),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
