import 'package:accounting_app/services/local_database/database_service.dart';

import '../model/model.dart';

class MasterFormRepository {
  final DatabaseService databaseService;

  MasterFormRepository(this.databaseService);

  List<Division>? getDivisions() {
    try {
      final divisionList = databaseService.getDivisionsList();

      if (divisionList != null && divisionList.isNotEmpty) {
        return divisionList;
      }
      return [];
    } catch (e) {
      print("Exception: ${e.toString()}");
      return null;
    }
  }

  Future<bool> addDivision(Division division) async {
    try {
      await databaseService.addDivisionForm(division);
      return true;
    } catch (e) {
      print("Exception: ${e.toString()}");
      return false;
    }
  }

  Future<bool> addCostCentre(CostCentre costCentre) async {
    try {
      await databaseService.addCostCentreForm(costCentre);
      return true;
    } catch (e) {
      print("Exception: ${e.toString()}");
      return false;
    }
  }

  List<CostCentre>? getCostCenters() {
    try {
      final costCentreList = databaseService.getCostCenterList();

      if (costCentreList != null && costCentreList.isNotEmpty) {
        return costCentreList;
      }
      return [];
    } catch (e) {
      print("Exception: ${e.toString()}");
      return null;
    }
  }

  Future<bool> addLedgerType(LedgerType ledgerType) async {
    try {
      await databaseService.addLedgerTypeForm(ledgerType);
      return true;
    } catch (e) {
      print("Exception: ${e.toString()}");
      return false;
    }
  }

  List<LedgerType>? getLedgerTypeList() {
    try {
      final ledgerTypeList = databaseService.getLedgerTypeList();

      if (ledgerTypeList != null && ledgerTypeList.isNotEmpty) {
        return ledgerTypeList;
      }
      return [];
    } catch (e) {
      print("Exception: ${e.toString()}");
      return null;
    }
  }

  Future<bool> addMainSchedule(MainSchedule mainSchedule) async {
    try {
      await databaseService.addMainScheduleForm(mainSchedule);
      return true;
    } catch (e) {
      print("Exception: ${e.toString()}");
      return false;
    }
  }

  List<MainSchedule>? getMainScheduleList() {
    try {
      final mainScheduleList = databaseService.getMainScheduleList();

      if (mainScheduleList != null && mainScheduleList.isNotEmpty) {
        return mainScheduleList;
      }
      return [];
    } catch (e) {
      print("Exception: ${e.toString()}");
      return null;
    }
  }

  Future<bool> addSubSchedule(SubSchedule subSchedule) async {
    try {
      await databaseService.addSubScheduleForm(subSchedule);
      return true;
    } catch (e) {
      print("Exception: ${e.toString()}");
      return false;
    }
  }

  List<SubSchedule>? getSubScheduleList() {
    try {
      final subScheduleList = databaseService.getSubScheduleList();

      if (subScheduleList != null && subScheduleList.isNotEmpty) {
        return subScheduleList;
      }
      return [];
    } catch (e) {
      print("Exception: ${e.toString()}");
      return null;
    }
  }

  Future<bool> addLedgerGroup(LedgerGroup ledgerGroup) async {
    try {
      await databaseService.addLedgerGroupForm(ledgerGroup);
      return true;
    } catch (e) {
      print("Exception: ${e.toString()}");
      return false;
    }
  }

  List<LedgerGroup>? getLedgerGroupList() {
    try {
      final ledgerGroupList = databaseService.getLedgerGroupList();

      if (ledgerGroupList != null && ledgerGroupList.isNotEmpty) {
        return ledgerGroupList;
      }
      return [];
    } catch (e) {
      print("Exception: ${e.toString()}");
      return null;
    }
  }

  Future<bool> addGeneralLedger(GeneralLedger generalLedger) async {
    try {
      await databaseService.addGeneralLedgerForm(generalLedger);
      return true;
    } catch (e) {
      print("Exception: ${e.toString()}");
      return false;
    }
  }

  List<GeneralLedger>? getGeneralLedgerList() {
    try {
      final generalLedgerList = databaseService.getGeneralLedgerList();

      if (generalLedgerList != null && generalLedgerList.isNotEmpty) {
        return generalLedgerList;
      }
      return [];
    } catch (e) {
      print("Exception: ${e.toString()}");
      return null;
    }
  }

  Future<bool> addVoucherType(VoucherType voucherType) async {
    try {
      await databaseService.addVoucherTypeForm(voucherType);
      return true;
    } catch (e) {
      print("Exception: ${e.toString()}");
      return false;
    }
  }

  List<VoucherType>? getVoucherTypeList() {
    try {
      final voucherTypeList = databaseService.getVoucherTypeList();

      if (voucherTypeList != null && voucherTypeList.isNotEmpty) {
        return voucherTypeList;
      }
      return [];
    } catch (e) {
      print("Exception: ${e.toString()}");
      return null;
    }
  }
}
