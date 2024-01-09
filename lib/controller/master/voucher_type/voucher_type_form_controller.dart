import 'package:accounting_app/controller/base_controller.dart';
import 'package:flutter/material.dart';

import '../../../repository/repository.dart';

class VoucherTypeFormController extends BaseController {
  final MasterFormRepository masterFormRepository;

  VoucherTypeFormController(this.masterFormRepository);

  final formKey = GlobalKey<FormState>();

  final voucherTypeNameController = TextEditingController();
}
