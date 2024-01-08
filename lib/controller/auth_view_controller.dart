import 'package:accounting_app/controller/base_controller.dart';
import 'package:get/get.dart';

import '../repository/repository.dart';
import '../resources/resources.dart';

class AuthViewController extends BaseController {
  final UserAuthRepository userAuthRepository;
  RxString routes = Routes.loginRoute.obs;

  AuthViewController(this.userAuthRepository);

  @override
  void onInit() {
    manageAuthState();
    super.onInit();
  }

  manageAuthState() {
    final isLoggedIn = userAuthRepository.getUserAuthStatus();
    if (isLoggedIn) {
      routes.value = Routes.dashBoardRoute;
      return;
    }
    routes.value = Routes.loginRoute;
  }
}
