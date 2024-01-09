import 'package:accounting_app/controller/base_controller.dart';

import '../../../repository/repository.dart';

class CostCenterListController extends BaseController {
  final MasterFormRepository masterFormRepository;

  CostCenterListController(this.masterFormRepository);
}
