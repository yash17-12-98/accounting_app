import 'package:accounting_app/app/functions.dart';
import 'package:accounting_app/controller/base_controller.dart';
import 'package:accounting_app/model/master/sub_schedule.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../repository/repository.dart';
import '../../../resources/resources.dart';

class SubScheduleFormController extends BaseController {
  final MasterFormRepository masterFormRepository;

  SubScheduleFormController(this.masterFormRepository);

  final formKey = GlobalKey<FormState>();

  final subScheduleNameController = TextEditingController();

  final subScheduleRemarkController = TextEditingController();

  onSubmit() async {
    if (formKey.currentState!.validate()) {
      FocusManager.instance.primaryFocus?.unfocus();

      final subSchedule = SubSchedule(
          subScheduleId: uuid.v1(),
          subScheduleName: subScheduleNameController.text,
          subScheduleRemarks: subScheduleRemarkController.text);

      final isAdded = await masterFormRepository.addSubSchedule(subSchedule);

      if (isAdded) {
        Get.back();
        showSnackBar(AppStrings.subSchedule, AppStrings.submitSuccessFully);
        return;
      }
      showSnackBar(AppStrings.subSchedule, AppStrings.submitFail);
    }
  }
}
