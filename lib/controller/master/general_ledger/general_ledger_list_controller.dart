import 'package:accounting_app/controller/base_controller.dart';

import '../../../repository/repository.dart';

class GeneralLedgerListController extends BaseController {
  final MasterFormRepository masterFormRepository;

  GeneralLedgerListController(this.masterFormRepository);
}
