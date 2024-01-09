import 'package:accounting_app/app/functions.dart';
import 'package:accounting_app/controller/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/model.dart';
import '../../../repository/repository.dart';
import '../../../resources/resources.dart';

class LedgerTypeFormController extends BaseController {
  final MasterFormRepository masterFormRepository;

  LedgerTypeFormController(this.masterFormRepository);

  final ledgerTypeNameController = TextEditingController();
  final ledgerTypeRemarkController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  onSubmit() async {
    if (formKey.currentState!.validate()) {
      FocusManager.instance.primaryFocus?.unfocus();

      final ledgerType = LedgerType(
          ledgerTypeId: uuid.v1(),
          ledgerTypeName: ledgerTypeNameController.text,
          ledgerTypeRemarks: ledgerTypeRemarkController.text);

      final isAdded = await masterFormRepository.addLedgerType(ledgerType);

      if (isAdded) {
        Get.back();
        showSnackBar(AppStrings.ledgerType, AppStrings.submitSuccessFully);
        return;
      }
      showSnackBar(AppStrings.ledgerType, AppStrings.submitFail);
    }
  }
}
