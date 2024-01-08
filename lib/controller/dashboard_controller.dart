import 'package:accounting_app/repository/repository.dart';
import 'package:get/get.dart';

import '../resources/resources.dart';
import 'base_controller.dart';

class DashboardController extends BaseController {
  final UserAuthRepository userAuthRepository;

  DashboardController(this.userAuthRepository);

  @override
  void onInit() {
    super.onInit();
  }

  onLogout() async {
    await userAuthRepository.updateUserAuthStatus(isLoggedIn: false);
    Get.offNamed(Routes.loginRoute);
  }

  onDivisionTap() {
    Get.toNamed(Routes.divisionRoute);
  }

  onCostCentreTap() {
    Get.toNamed(Routes.costCenterRoute);
  }

  onLedgerTypeTap() {
    Get.toNamed(Routes.ledgerTypeRoute);
  }
}
