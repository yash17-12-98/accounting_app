import '../../model/model.dart';

abstract class DatabaseService {
  updateAuthStatus({bool status = false});

  bool getAuthStatus();

  List<User> getUserList();

  addUser(User user);

  addDivisionForm(Division division);

  List<Division>? getDivisionsList();

  addCostCentreForm(CostCentre costCentre);

  addLedgerTypeForm(LedgerType ledgerType);

  List<LedgerType>? getLedgerTypeList();
}
