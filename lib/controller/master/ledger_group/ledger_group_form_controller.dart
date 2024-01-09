import 'package:accounting_app/controller/base_controller.dart';
import 'package:flutter/material.dart';

import '../../../repository/repository.dart';

class LedgerGroupFormController extends BaseController {
  final MasterFormRepository masterFormRepository;

  LedgerGroupFormController(this.masterFormRepository);

  final formKey = GlobalKey<FormState>();
  final ledgerGroupNameController = TextEditingController();
}
