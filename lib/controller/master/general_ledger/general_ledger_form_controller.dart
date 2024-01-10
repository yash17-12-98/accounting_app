import 'package:accounting_app/app/extensions.dart';
import 'package:accounting_app/app/functions.dart';
import 'package:accounting_app/controller/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/model.dart';
import '../../../repository/repository.dart';
import '../../../resources/resources.dart';

class GeneralLedgerFormController extends BaseController {
  final MasterFormRepository masterFormRepository;

  GeneralLedgerFormController(this.masterFormRepository);

  final generalLedgerNameController = TextEditingController();
  final generalLedgerRemarkController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  List<MainSchedule> mainScheduleList = <MainSchedule>[];
  List<SubSchedule> subScheduleList = <SubSchedule>[];
  List<LedgerType> ledgerTypeList = <LedgerType>[];
  List<LedgerGroup> ledgerGroupList = <LedgerGroup>[];

  MainSchedule? mainSchedule;
  SubSchedule? subSchedule;
  LedgerType? ledgerType;
  LedgerGroup? ledgerGroup;

  List<DropdownMenuItem<MainSchedule>> mainScheduleMenuItems = [];
  List<DropdownMenuItem<SubSchedule>> subScheduleMenuItems = [];
  List<DropdownMenuItem<LedgerType>> ledgerTypeMenuItems = [];
  List<DropdownMenuItem<LedgerGroup>> ledgerGroupMenuItems = [];

  @override
  void onInit() {
    getLedgerTypeList();
    getMainScheduleList();
    getSubScheduleList();
    getLedgerGroupList();
    super.onInit();
  }

  getMainScheduleList() {
    final list = masterFormRepository.getMainScheduleList();

    if (list != null && list.isNotEmpty) {
      mainScheduleList = list;
      mainScheduleList
          .map((element) => mainScheduleMenuItems.add(DropdownMenuItem(
              value: element, child: Text(element.mainScheduleName.orEmpty()))))
          .toList();
    }
  }

  getSubScheduleList() {
    final list = masterFormRepository.getSubScheduleList();

    if (list != null && list.isNotEmpty) {
      subScheduleList = list;
      subScheduleList
          .map((element) => subScheduleMenuItems.add(DropdownMenuItem(
              value: element, child: Text(element.subScheduleName.orEmpty()))))
          .toList();
    }
  }

  getLedgerTypeList() {
    final list = masterFormRepository.getLedgerTypeList();

    if (list != null && list.isNotEmpty) {
      ledgerTypeList = list;
      ledgerTypeList
          .map((element) => ledgerTypeMenuItems.add(DropdownMenuItem(
              value: element, child: Text(element.ledgerTypeName.orEmpty()))))
          .toList();
    }
  }

  getLedgerGroupList() {
    final list = masterFormRepository.getLedgerGroupList();

    if (list != null && list.isNotEmpty) {
      ledgerGroupList = list;
      ledgerGroupList
          .map((element) => ledgerGroupMenuItems.add(DropdownMenuItem(
              value: element, child: Text(element.ledgerGroupName.orEmpty()))))
          .toList();
    }
  }

  onLedgerTypeChange(LedgerType? value) {
    if (value != null) {
      ledgerType = value;
    }
  }

  onMainScheduleChange(MainSchedule? value) {
    if (value != null) {
      mainSchedule = value;
    }
  }

  onSubScheduleChange(SubSchedule? value) {
    if (value != null) {
      subSchedule = value;
    }
  }

  onLedgerGroupChange(LedgerGroup? value) {
    if (value != null) {
      ledgerGroup = value;
    }
  }

  onSubmit() async {
    if (formKey.currentState!.validate()) {
      FocusManager.instance.primaryFocus?.unfocus();

      final generalLedger = GeneralLedger(
          generalLedgerId: uuid.v1(),
          ledgerTypeId: ledgerType!.ledgerTypeId,
          mainScheduleId: mainSchedule!.mainScheduleId,
          subScheduleId: subSchedule!.subScheduleId,
          ledgerGroupId: ledgerGroup!.ledgerGroupId,
          generalLedgerName: generalLedgerNameController.text,
          generalLedgerRemarks: generalLedgerRemarkController.text);

      final isAdded =
          await masterFormRepository.addGeneralLedger(generalLedger);

      if (isAdded) {
        Get.back();
        showSnackBar(AppStrings.generalLedger, AppStrings.submitSuccessFully);
        return;
      }
      showSnackBar(AppStrings.generalLedger, AppStrings.submitFail);
    }
  }
}
