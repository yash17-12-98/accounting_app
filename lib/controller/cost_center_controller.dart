import 'package:accounting_app/app/extensions.dart';
import 'package:accounting_app/app/functions.dart';
import 'package:accounting_app/repository/master_form_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/model.dart';
import '../resources/resources.dart';
import 'base_controller.dart';

class CostCenterController extends BaseController {
  final MasterFormRepository masterFormRepository;

  CostCenterController(this.masterFormRepository);

  final costCenterController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  List<Division> divisionList = <Division>[];

  Division? division;

  List<DropdownMenuItem<Division>> menuItems = [];

  @override
  void onInit() {
    getDivisionList();
    super.onInit();
  }

  getDivisionList() {
    final list = masterFormRepository.getDivisions();

    if (list != null && list.isNotEmpty) {
      divisionList = list;
      divisionList
          .map((element) => menuItems.add(DropdownMenuItem(
              value: element, child: Text(element.divisionName.orEmpty()))))
          .toList();
    }
  }

  onDivisionChange(Division? newValue) {
    division = newValue;
  }

  onSubmit() async {
    if (formKey.currentState!.validate()) {
      FocusManager.instance.primaryFocus?.unfocus();

      final costCentre = CostCentre(
          costCentreName: costCenterController.text,
          divisionId: division!.divisionId.orEmpty(),
          costCentreId: uuid.v1());

      final isAdded = await masterFormRepository.addCostCentre(costCentre);

      if (isAdded) {
        Get.back();
        showSnackBar(AppStrings.costCentre, AppStrings.submitSuccessFully);
        return;
      }
      showSnackBar(AppStrings.costCentre, AppStrings.submitFail);
    }
  }
}
