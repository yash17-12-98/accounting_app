import 'package:accounting_app/model/master/cost_centre.dart';
import 'package:accounting_app/model/master/division.dart';
import 'package:accounting_app/services/local_database/database_service.dart';

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
}
