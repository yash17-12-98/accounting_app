import 'package:hive/hive.dart';

import '../model/model.dart';
import 'app_constant.dart';

class HiveBox {
  static Box<User> userBox() => Hive.box<User>(AppConstant.userBox);

  static Box<bool> authBox() => Hive.box<bool>(AppConstant.authBox);

  static Box<Division> divisionBox() =>
      Hive.box<Division>(AppConstant.divisionBox);

  static Box<CostCentre> costCentreBox() =>
      Hive.box<CostCentre>(AppConstant.costCentreBox);

  static Box<LedgerType> ledgerBox() =>
      Hive.box<LedgerType>(AppConstant.ledgerTypeBox);

  static Box<MainSchedule> mainScheduleBox() =>
      Hive.box<MainSchedule>(AppConstant.mainScheduleBox);

  static Box<SubSchedule> subScheduleBox() =>
      Hive.box<SubSchedule>(AppConstant.subScheduleBox);

  static Box<LedgerGroup> ledgerGroupBox() =>
      Hive.box<LedgerGroup>(AppConstant.ledgerGroupBox);

  static Box<GeneralLedger> generalLedgerBox() =>
      Hive.box<GeneralLedger>(AppConstant.generalLedgerBox);

  static Box<VoucherType> voucherTypeBox() =>
      Hive.box<VoucherType>(AppConstant.voucherTypeBox);
}
