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

  Future<bool> addLedgerType(LedgerType ledgerType) async {
    try {
      await databaseService.addLedgerTypeForm(ledgerType);
      return true;
    } catch (e) {
      print("Exception: ${e.toString()}");
      return false;
    }
  }
}
