import 'package:accounting_app/app/boxes.dart';
import 'package:accounting_app/model/master/cost_centre.dart';
import 'package:accounting_app/model/master/division.dart';
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
}
