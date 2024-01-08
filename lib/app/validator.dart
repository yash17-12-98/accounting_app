import 'package:accounting_app/model/master/division.dart';

class Validator {
  static String? checkPhoneNumber(String? number) {
    if (number != null && number.isEmpty) {
      return 'Please enter phone number';
    }
    return null;
  }

  static String? checkMPin(String? number) {
    if (number != null && number.isEmpty) {
      return 'Please enter M-Pin';
    }
    return null;
  }

  static String? checkDivisionName(String? name) {
    if (name != null && name.isEmpty) {
      return 'Please enter division name';
    }
    return null;
  }

  static String? checkCostCentreName(String? name) {
    if (name != null && name.isEmpty) {
      return 'Please enter cost centre name';
    }
    return null;
  }

  static String? checkDivisionSelection(Division? division) {
    if (division == null) {
      return 'Please select a division';
    }
    return null;
  }

  static String? checkLedgerTypeName(String? name) {
    if (name != null && name.isEmpty) {
      return 'Please enter ledger type name';
    }
    return null;
  }

  static String? checkLedgerTypeRemarks(String? name) {
    if (name != null && name.isEmpty) {
      return 'Please enter ledger type remarks';
    }
    return null;
  }
}
