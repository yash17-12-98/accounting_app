import 'package:accounting_app/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';
import '../resources/resources.dart';

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 35),
                    Image.asset(ImageAssets.appLogo),
                    const SizedBox(height: 35),
                    Text('Login Account',
                        style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 15),
                    Text('Login with Mobile Number & M-Pin',
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 30),
                    AppTextField(
                        controller: controller.mobileController,
                        focus: controller.mobileFocusNode,
                        hintText: 'Phone Number',
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.phone,
                        onFieldSubmitted: (_) =>
                            FocusScope.of(context).nextFocus()),
                    const SizedBox(height: 10),
                    AppTextField(
                        controller: controller.mPinController,
                        focus: controller.mPinFocusNode,
                        hintText: 'M-Pin',
                        keyboardType: TextInputType.number),
                    const SizedBox(height: 20),
                    MaterialButton(
                      onPressed: controller.onLogin,
                      color: ColorManager.primary,
                      textColor: ColorManager.white,
                      child: const Text('Login'),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
