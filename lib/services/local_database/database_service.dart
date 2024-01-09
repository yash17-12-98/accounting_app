import '../../model/model.dart';

abstract class DatabaseService {
  updateAuthStatus({bool status = false});

  bool getAuthStatus();

  List<User> getUserList();

  addUser(User user);

  addDivisionForm(Division division);

  List<Division>? getDivisionsList();

  addCostCentreForm(CostCentre costCentre);

  List<CostCentre>? getCostCenterList();

  addLedgerTypeForm(LedgerType ledgerType);

  List<LedgerType>? getLedgerTypeList();

  addMainScheduleForm(MainSchedule mainSchedule);

  List<MainSchedule>? getMainScheduleList();

  addSubScheduleForm(SubSchedule subSchedule);

  List<SubSchedule>? getSubScheduleList();

  addLedgerGroupForm(LedgerGroup ledgerGroup);

  List<LedgerGroup>? getLedgerGroupList();

  addGeneralLedgerForm(GeneralLedger generalLedger);

  List<GeneralLedger>? getGeneralLedgerList();

  addVoucherTypeForm(VoucherType voucherType);

  List<VoucherType>? getVoucherTypeList();
}
