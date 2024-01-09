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

  onDrawerTap(index) {
    switch (index) {
      case 0:
        return Get.toNamed(Routes.divisionRoute);
      case 1:
        return Get.toNamed(Routes.costCenterRoute);
      case 2:
        return Get.toNamed(Routes.ledgerTypeRoute);
      case 3:
        return Get.toNamed(Routes.mainScheduleRoute);
      case 4:
        return Get.toNamed(Routes.subScheduleRoute);
      case 5:
        return Get.toNamed(Routes.ledgerGroupRoute);
      case 6:
        return Get.toNamed(Routes.generalLedgerRoute);
      case 7:
        return Get.toNamed(Routes.voucherTypeRoute);
    }
  }
}
