import 'package:accounting_app/app/validator.dart';
import 'package:accounting_app/model/master/ledger_group.dart';
import 'package:accounting_app/model/master/ledger_type.dart';
import 'package:accounting_app/model/master/main_schedule.dart';
import 'package:accounting_app/model/master/sub_schedule.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/controller.dart';
import '../../../resources/resources.dart';
import '../../../widgets/widget.dart';

class GeneralLedgerForm extends GetView<GeneralLedgerFormController> {
  const GeneralLedgerForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(scrolledUnderElevation: 0.0),
        body: SingleChildScrollView(
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
                    validator: Validator.checkGeneralLedgerName,
                    title: AppStrings.generalLedger,
                    viewBorder: false,
                    hintText: AppStrings.enterGeneralLedgerName,
                    shadowColor: ColorManager.lightGrey,
                    elevation: 10,
                    controller: controller.generalLedgerNameController,
                  ),
                  const SizedBox(height: 35.0),
                  AppDropDownField<LedgerType>(
                    title: AppStrings.ledgerType,
                    hint: AppStrings.selectLedgerGroup,
                    selectedValue: controller.ledgerType,
                    items: controller.ledgerTypeMenuItems,
                    onChanged: controller.onLedgerTypeChange,
                    validator: Validator.checkLedgerTypeSelection,
                  ),
                  const SizedBox(height: 35.0),
                  AppDropDownField<MainSchedule>(
                    title: AppStrings.mainSchedule,
                    hint: AppStrings.selectMainSchedule,
                    selectedValue: controller.mainSchedule,
                    items: controller.mainScheduleMenuItems,
                    onChanged: controller.onMainScheduleChange,
                    validator: Validator.checkMainScheduleSelection,
                  ),
                  const SizedBox(height: 35.0),
                  AppDropDownField<SubSchedule>(
                    title: AppStrings.subSchedule,
                    hint: AppStrings.selectSubSchedule,
                    selectedValue: controller.subSchedule,
                    items: controller.subScheduleMenuItems,
                    onChanged: controller.onSubScheduleChange,
                    validator: Validator.checkSubScheduleSelection,
                  ),
                  const SizedBox(height: 35.0),
                  AppDropDownField<LedgerGroup>(
                    title: AppStrings.ledgerGroup,
                    hint: AppStrings.selectLedgerGroup,
                    selectedValue: controller.ledgerGroup,
                    items: controller.ledgerGroupMenuItems,
                    onChanged: controller.onLedgerGroupChange,
                    validator: Validator.checkLedgerGroupSelection,
                  ),
                  const SizedBox(height: 35.0),
                  AppTextField(
                    validator: Validator.checkGeneralLedgerRemark,
                    title: AppStrings.generalLedgerRemarks,
                    viewBorder: false,
                    hintText: AppStrings.enterGeneralLedgerRemark,
                    shadowColor: ColorManager.lightGrey,
                    elevation: 10,
                    controller: controller.generalLedgerRemarkController,
                  ),
                  const SizedBox(height: 40.0),
                  MaterialButton(
                      minWidth: double.infinity,
                      color: ColorManager.primary,
                      textColor: ColorManager.white,
                      onPressed: controller.onSubmit,
                      child: const Text(AppStrings.submit)),
                  const SizedBox(height: 40.0),
                ],
              ),
            ),
          ),
        ));
  }
}
