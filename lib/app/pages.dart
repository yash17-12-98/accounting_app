import 'package:get/get.dart';

import '../binding/binding.dart';
import '../resources/resources.dart';
import '../view/view.dart';

List<GetPage> pages = [
  GetPage(
    name: Routes.authRoute,
    page: () => const AuthView(),
    binding: AuthViewBinding(),
  ),
  GetPage(
    name: Routes.loginRoute,
    page: () => const Login(),
    binding: LoginBinding(),
  ),
  GetPage(
    name: Routes.dashBoardRoute,
    page: () => const DashBoard(),
    binding: DashBoardBinding(),
  ),
  GetPage(
    name: Routes.divisionRoute,
    page: () => const DivisionForm(),
    binding: DivisionBinding(),
  ),
  GetPage(
    name: Routes.costCenterRoute,
    page: () => const DashBoard(),
    binding: CostCenterBinding(),
  )
];
