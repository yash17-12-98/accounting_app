import 'package:accounting_app/app/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/controller.dart';
import '../../../model/model.dart';
import '../../../resources/resources.dart';
import '../../../widgets/widget.dart';

class CostCenterForm extends GetView<CostCenterFormController> {
  const CostCenterForm({super.key});

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
                    validator: Validator.checkCostCentreName,
                    title: AppStrings.costCenter,
                    viewBorder: false,
                    hintText: AppStrings.enterCostCentreName,
                    shadowColor: ColorManager.lightGrey,
                    elevation: 10,
                    controller: controller.costCenterController,
                  ),
                  const SizedBox(height: 30.0),
                  AppDropDownField<Division>(
                    title: AppStrings.division,
                    hint: AppStrings.selectDivision,
                    selectedValue: controller.division,
                    items: controller.menuItems,
                    validator: Validator.checkDivisionSelection,
                    onChanged: controller.onDivisionChange,
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
