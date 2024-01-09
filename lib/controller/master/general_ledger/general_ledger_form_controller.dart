import 'package:accounting_app/controller/base_controller.dart';
import 'package:flutter/material.dart';

import '../../../repository/repository.dart';

class GeneralLedgerFormController extends BaseController {
  final MasterFormRepository masterFormRepository;

  GeneralLedgerFormController(this.masterFormRepository);
  final formKey = GlobalKey<FormState>();
}
