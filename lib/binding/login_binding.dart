import 'package:accounting_app/repository/user_auth_repository.dart';
import 'package:accounting_app/services/local_database/app_database_service.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';
import '../services/local_database/database_service.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DatabaseService>(() => AppDatabaseService(), fenix: true);

    Get.lazyPut<UserAuthRepository>(() => UserAuthRepository(Get.find()),
        fenix: true);

    Get.put(LoginController(Get.find()));
  }
}
