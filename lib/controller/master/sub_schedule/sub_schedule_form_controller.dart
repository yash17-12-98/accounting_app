import 'package:accounting_app/controller/base_controller.dart';
import 'package:flutter/material.dart';

import '../../../repository/repository.dart';

class SubScheduleFormController extends BaseController {
  final MasterFormRepository masterFormRepository;

  SubScheduleFormController(this.masterFormRepository);

  final formKey = GlobalKey<FormState>();
  final subScheduleNameController = TextEditingController();
}
