import 'package:accounting_app/app/functions.dart';
import 'package:accounting_app/controller/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/model.dart';
import '../../../repository/repository.dart';
import '../../../resources/resources.dart';

class VoucherTypeFormController extends BaseController {
  final MasterFormRepository masterFormRepository;

  VoucherTypeFormController(this.masterFormRepository);

  final formKey = GlobalKey<FormState>();

  final voucherTypeNameController = TextEditingController();
  final voucherTypeRemarkController = TextEditingController();

  onSubmit() async {
    if (formKey.currentState!.validate()) {
      FocusManager.instance.primaryFocus?.unfocus();

      final voucherType = VoucherType(
          voucherTypeId: uuid.v1(),
          voucherTypeName: voucherTypeNameController.text,
          voucherTypeRemarks: voucherTypeRemarkController.text);

      final isAdded = await masterFormRepository.addVoucherType(voucherType);

      if (isAdded) {
        Get.back();
        showSnackBar(AppStrings.voucherType, AppStrings.submitSuccessFully);
        return;
      }
      showSnackBar(AppStrings.voucherType, AppStrings.submitFail);
    }
  }
}
