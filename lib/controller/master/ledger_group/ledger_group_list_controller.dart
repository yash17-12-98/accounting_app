import 'package:accounting_app/controller/base_controller.dart';

import '../../../repository/repository.dart';

class LedgerGroupListController extends BaseController {
  final MasterFormRepository masterFormRepository;

  LedgerGroupListController(this.masterFormRepository);
}
