import 'package:accounting_app/app/functions.dart';
import 'package:accounting_app/controller/base_controller.dart';
import 'package:accounting_app/model/model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../repository/repository.dart';
import '../../../resources/resources.dart';

class MainScheduleFormController extends BaseController {
  final MasterFormRepository masterFormRepository;

  MainScheduleFormController(this.masterFormRepository);

  final mainScheduleNameController = TextEditingController();
  final mainScheduleRemarkController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  onSubmit() async {
    if (formKey.currentState!.validate()) {
      FocusManager.instance.primaryFocus?.unfocus();

      final mainSchedule = MainSchedule(
          mainScheduleId: uuid.v1(),
          mainScheduleName: mainScheduleNameController.text,
          mainScheduleRemarks: mainScheduleRemarkController.text);

      final isAdded = await masterFormRepository.addMainSchedule(mainSchedule);

      if (isAdded) {
        Get.back();
        showSnackBar(AppStrings.mainSchedule, AppStrings.submitSuccessFully);
        return;
      }
      showSnackBar(AppStrings.mainSchedule, AppStrings.submitFail);
    }
  }
}
