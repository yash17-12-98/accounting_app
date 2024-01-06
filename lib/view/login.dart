import 'package:accounting_app/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';
import '../resources/resources.dart';

class Login extends GetView<LoginController> {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Stack(
      children: [
        Image.asset(ImageAssets.primaryBackground),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p15),
            child: Card(
              color: ColorManager.white,
              elevation: AppSize.s18,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12)),
              child: SizedBox(
                height: height * 0.6,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Login Account'),
                      Text('Login with Mobile Number & M-Pin'),
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
                      )
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
