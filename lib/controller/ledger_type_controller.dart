import 'package:accounting_app/controller/base_controller.dart';
import 'package:flutter/material.dart';

import '../repository/repository.dart';

class LedgerTypeController extends BaseController {
  final MasterFormRepository masterFormRepository;

  LedgerTypeController(this.masterFormRepository);

  final ledgerTypeNameController = TextEditingController();
  final ledgerTypeRemarkController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  onSubmit() async {
    if (formKey.currentState!.validate()) {
      FocusManager.instance.primaryFocus?.unfocus();

      // final division = Division(
      //     divisionId: uuid.v1(), divisionName: divisionNameController.text);
      //
      // final isAdded = await masterFormRepository.addDivision(division);
      //
      // if (isAdded) {
      //   Get.back();
      //   showSnackBar(AppStrings.division, AppStrings.submitSuccessFully);
      //   return;
      // }
      // showSnackBar(AppStrings.division, AppStrings.submitFail);
    }
  }
}
