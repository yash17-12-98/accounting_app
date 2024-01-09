import 'package:accounting_app/controller/base_controller.dart';
import 'package:flutter/material.dart';

import '../../../repository/repository.dart';

class MainScheduleFormController extends BaseController {
  final MasterFormRepository masterFormRepository;

  MainScheduleFormController(this.masterFormRepository);

  final formKey = GlobalKey<FormState>();
  final mainScheduleNameController = TextEditingController();
}
