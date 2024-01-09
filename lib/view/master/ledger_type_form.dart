import 'package:accounting_app/app/validator.dart';
import 'package:accounting_app/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/resources.dart';
import '../../widgets/widget.dart';

class LedgerTypeForm extends GetView<LedgerTypeController> {
  const LedgerTypeForm({super.key});

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
                    validator: Validator.checkLedgerTypeName,
                    title: AppStrings.ledgerType,
                    viewBorder: false,
                    hintText: AppStrings.enterLedgerTypeName,
                    shadowColor: ColorManager.lightGrey,
                    elevation: 10,
                    controller: controller.ledgerTypeNameController,
                  ),
                  const SizedBox(height: 30.0),
                  AppTextField(
                    validator: Validator.checkLedgerTypeRemarks,
                    title: AppStrings.ledgerTypeRemarks,
                    viewBorder: false,
                    hintText: AppStrings.enterLedgerTypeRemarks,
                    shadowColor: ColorManager.lightGrey,
                    elevation: 10,
                    controller: controller.ledgerTypeRemarkController,
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
