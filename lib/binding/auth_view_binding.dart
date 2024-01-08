import 'package:accounting_app/controller/auth_view_controller.dart';
import 'package:accounting_app/services/local_database/app_database_service.dart';
import 'package:accounting_app/services/local_database/database_service.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';
import '../repository/repository.dart';

class AuthViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DatabaseService>(() => AppDatabaseService(), fenix: true);

    Get.lazyPut<UserAuthRepository>(() => UserAuthRepository(Get.find()),
        fenix: true);

    Get.put<AuthViewController>(AuthViewController(Get.find()));
    Get.lazyPut<LoginController>(() => LoginController(Get.find()));
    Get.lazyPut<DashboardController>(() => DashboardController(Get.find()));
  }
}
