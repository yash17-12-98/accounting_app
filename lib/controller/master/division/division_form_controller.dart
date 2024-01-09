import 'package:accounting_app/app/functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/model.dart';
import '../../../repository/repository.dart';
import '../../../resources/resources.dart';
import '../../base_controller.dart';

class DivisionFormController extends BaseController {
  final MasterFormRepository masterFormRepository;

  DivisionFormController(this.masterFormRepository);

  final divisionNameController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  onSubmit() async {
    if (formKey.currentState!.validate()) {
      FocusManager.instance.primaryFocus?.unfocus();

      final division = Division(
          divisionId: uuid.v1(), divisionName: divisionNameController.text);

      final isAdded = await masterFormRepository.addDivision(division);

      if (isAdded) {
        Get.back();
        showSnackBar(AppStrings.division, AppStrings.submitSuccessFully);
        return;
      }
      showSnackBar(AppStrings.division, AppStrings.submitFail);
    }
  }
}
