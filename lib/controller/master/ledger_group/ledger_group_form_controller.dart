import 'package:accounting_app/app/functions.dart';
import 'package:accounting_app/controller/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/model.dart';
import '../../../repository/repository.dart';
import '../../../resources/resources.dart';

class LedgerGroupFormController extends BaseController {
  final MasterFormRepository masterFormRepository;

  LedgerGroupFormController(this.masterFormRepository);

  final formKey = GlobalKey<FormState>();
  final ledgerGroupNameController = TextEditingController();
  final ledgerGroupRemarkController = TextEditingController();

  onSubmit() async {
    if (formKey.currentState!.validate()) {
      FocusManager.instance.primaryFocus?.unfocus();

      final ledgerGroup = LedgerGroup(
          ledgerGroupId: uuid.v1(),
          ledgerGroupName: ledgerGroupNameController.text,
          ledgerGroupRemarks: ledgerGroupRemarkController.text);

      final isAdded = await masterFormRepository.addLedgerGroup(ledgerGroup);

      if (isAdded) {
        Get.back();
        showSnackBar(AppStrings.ledgerGroup, AppStrings.submitSuccessFully);
        return;
      }
      showSnackBar(AppStrings.ledgerGroup, AppStrings.submitFail);
    }
  }
}
