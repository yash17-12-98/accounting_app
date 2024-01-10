import 'package:accounting_app/app/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/controller.dart';
import '../../../resources/resources.dart';
import '../../../widgets/widget.dart';

class SubScheduleForm extends GetView<SubScheduleFormController> {
  const SubScheduleForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Form(
              key: controller.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.form,
                    style: getBoldStyle(
                        color: ColorManager.black, fontSize: FontSize.s30),
                  ),
                  const SizedBox(height: 35.0),
                  AppTextField(
                    validator: Validator.checkSubScheduleName,
                    title: AppStrings.subSchedule,
                    viewBorder: false,
                    hintText: AppStrings.enterMainScheduleName,
                    shadowColor: ColorManager.lightGrey,
                    elevation: 10,
                    controller: controller.subScheduleNameController,
                  ),
                  const SizedBox(height: 30.0),
                  AppTextField(
                    validator: Validator.checkSubScheduleRemarks,
                    title: AppStrings.subScheduleRemarks,
                    viewBorder: false,
                    hintText: AppStrings.enterSubScheduleRemarks,
                    shadowColor: ColorManager.lightGrey,
                    elevation: 10,
                    controller: controller.subScheduleRemarkController,
                  ),
                  const SizedBox(height: 40.0),
                  MaterialButton(
                      minWidth: double.infinity,
                      color: ColorManager.primary,
                      textColor: ColorManager.white,
                      onPressed: controller.onSubmit,
                      child: const Text(AppStrings.submit))
                ],
              ),
            ),
          ),
        ));
  }
}
