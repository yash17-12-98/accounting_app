import 'package:get/get.dart';

import '../binding/binding.dart';
import '../resources/resources.dart';
import '../view/view.dart';

List<GetPage> pages = [
  GetPage(
    name: Routes.loginRoute,
    page: () => const Login(),
    binding: HomeBinding(),
  ),
  GetPage(
    name: Routes.dashBoardRoute,
    page: () => const DashBoard(),
    binding: DashBoardBinding(),
  )
];
