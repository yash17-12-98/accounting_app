import 'package:accounting_app/app/boxes.dart';
import 'package:accounting_app/model/master/cost_centre.dart';
import 'package:accounting_app/model/master/division.dart';
import 'package:accounting_app/model/master/general_ledger.dart';
import 'package:accounting_app/model/master/ledger_group.dart';
import 'package:accounting_app/model/master/ledger_type.dart';
import 'package:accounting_app/model/master/main_schedule.dart';
import 'package:accounting_app/model/master/sub_schedule.dart';
import 'package:accounting_app/model/master/voucher_type.dart';
import 'package:accounting_app/model/user/user.dart';
import 'package:accounting_app/services/local_database/database_service.dart';

class AppDatabaseService extends DatabaseService {
  @override
  addUser(User user) async {
    final box = HiveBox.userBox();
    await box.add(user);
  }

  @override
  List<User> getUserList() {
    final box = HiveBox.userBox();
    final users = box.values.cast<User>().toList();
    return users;
  }

  @override
  bool getAuthStatus() {
    final box = HiveBox.authBox();
    final status = box.get('authStatus');
    if (status != null) return status;
    return false;
  }

  @override
  updateAuthStatus({bool status = false}) async {
    final box = HiveBox.authBox();
    await box.put('authStatus', status);
  }

  @override
  addDivisionForm(Division division) async {
    final box = HiveBox.divisionBox();
    await box.add(division);
  }

  @override
  List<Division>? getDivisionsList() {
    final box = HiveBox.divisionBox();
    final divisions = box.values.cast<Division>().toList();
    return divisions;
  }

  @override
  addCostCentreForm(CostCentre costCentre) async {
    final box = HiveBox.costCentreBox();
    await box.add(costCentre);
  }

  @override
  List<CostCentre>? getCostCenterList() {
    final box = HiveBox.costCentreBox();
    final costCenters = box.values.cast<CostCentre>().toList();
    return costCenters;
  }

  @override
  addLedgerTypeForm(LedgerType ledgerType) async {
    final box = HiveBox.ledgerBox();
    await box.add(ledgerType);
  }

  @override
  List<LedgerType>? getLedgerTypeList() {
    final box = HiveBox.ledgerBox();
    final ledgerTypes = box.values.cast<LedgerType>().toList();
    return ledgerTypes;
  }

  @override
  addMainScheduleForm(MainSchedule mainSchedule) async {
    final box = HiveBox.mainScheduleBox();
    await box.add(mainSchedule);
  }

  @override
  List<MainSchedule>? getMainScheduleList() {
    final box = HiveBox.mainScheduleBox();
    final mainSchedules = box.values.cast<MainSchedule>().toList();
    return mainSchedules;
  }

  @override
  addSubScheduleForm(SubSchedule subSchedule) async {
    final box = HiveBox.subScheduleBox();
    await box.add(subSchedule);
  }

  @override
  List<SubSchedule>? getSubScheduleList() {
    final box = HiveBox.subScheduleBox();
    final subSchedules = box.values.cast<SubSchedule>().toList();
    return subSchedules;
  }

  @override
  addGeneralLedgerForm(GeneralLedger generalLedger) async {
    final box = HiveBox.generalLedgerBox();
    await box.add(generalLedger);
  }

  @override
  List<GeneralLedger>? getGeneralLedgerList() {
    final box = HiveBox.generalLedgerBox();
    final generalLedgers = box.values.cast<GeneralLedger>().toList();
    return generalLedgers;
  }

  @override
  addLedgerGroupForm(LedgerGroup ledgerGroup) async {
    final box = HiveBox.ledgerGroupBox();
    await box.add(ledgerGroup);
  }

  @override
  List<LedgerGroup>? getLedgerGroupList() {
    final box = HiveBox.ledgerGroupBox();
    final ledgerGroups = box.values.cast<LedgerGroup>().toList();
    return ledgerGroups;
  }

  @override
  addVoucherTypeForm(VoucherType voucherType) async {
    final box = HiveBox.voucherTypeBox();
    await box.add(voucherType);
  }

  @override
  List<VoucherType>? getVoucherTypeList() {
    final box = HiveBox.voucherTypeBox();
    final voucherTypes = box.values.cast<VoucherType>().toList();
    return voucherTypes;
  }
}
