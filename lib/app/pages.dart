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
    page: () => const DivisionList(),
    binding: DivisionListBinding(),
  ),
  GetPage(
    name: Routes.divisionFormRoute,
    page: () => const DivisionForm(),
    binding: DivisionFormBinding(),
  ),
  GetPage(
    name: Routes.costCenterRoute,
    page: () => const CostCenterList(),
    binding: CostCenterListBinding(),
  ),
  GetPage(
    name: Routes.costCenterFormRoute,
    page: () => const CostCenterForm(),
    binding: CostCenterFormBinding(),
  ),
  GetPage(
    name: Routes.ledgerTypeRoute,
    page: () => const LedgerTypeList(),
    binding: LedgerTypeListBinding(),
  ),
  GetPage(
    name: Routes.ledgerTypeFormRoute,
    page: () => const LedgerTypeForm(),
    binding: LedgerTypeFormBinding(),
  ),
  GetPage(
    name: Routes.mainScheduleRoute,
    page: () => const MainScheduleList(),
    binding: MainScheduleListBinding(),
  ),
  GetPage(
    name: Routes.mainScheduleFormRoute,
    page: () => const MainScheduleForm(),
    binding: MainScheduleFormBinding(),
  ),
  GetPage(
    name: Routes.subScheduleRoute,
    page: () => const SubScheduleList(),
    binding: SubScheduleListBinding(),
  ),
  GetPage(
    name: Routes.subScheduleFormRoute,
    page: () => const SubScheduleForm(),
    binding: SubScheduleFormBinding(),
  ),
  GetPage(
    name: Routes.ledgerGroupRoute,
    page: () => const LedgerGroupList(),
    binding: SubScheduleListBinding(),
  ),
  GetPage(
    name: Routes.ledgerGroupFormRoute,
    page: () => const LedgerGroupForm(),
    binding: SubScheduleFormBinding(),
  ),
  GetPage(
    name: Routes.generalLedgerFormRoute,
    page: () => const GeneralLedgerForm(),
    binding: GeneralLedgerFormBinding(),
  ),
  GetPage(
    name: Routes.generalLedgerRoute,
    page: () => const GeneralLedgerList(),
    binding: GeneralLedgerListBinding(),
  ),
  GetPage(
    name: Routes.voucherTypeRoute,
    page: () => const VoucherTypeList(),
    binding: VoucherTypeListBinding(),
  ),
  GetPage(
    name: Routes.voucherTypeFormRoute,
    page: () => const VoucherTypeForm(),
    binding: VoucherTypeFormBinding(),
  )
];
