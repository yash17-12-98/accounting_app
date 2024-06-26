import '../model/model.dart';

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

  static String? checkMainScheduleSelection(MainSchedule? mainSchedule) {
    if (mainSchedule == null) {
      return 'Please select a main schedule';
    }
    return null;
  }

  static String? checkSubScheduleSelection(SubSchedule? subSchedule) {
    if (subSchedule == null) {
      return 'Please select a sub schedule';
    }
    return null;
  }

  static String? checkLedgerGroupSelection(LedgerGroup? ledgerGroup) {
    if (ledgerGroup == null) {
      return 'Please select a ledger group';
    }
    return null;
  }

  static String? checkLedgerTypeSelection(LedgerType? ledgerType) {
    if (ledgerType == null) {
      return 'Please select a ledger type';
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

  static String? checkMainScheduleName(String? name) {
    if (name != null && name.isEmpty) {
      return 'Please enter main schedule name';
    }
    return null;
  }

  static String? checkMainScheduleRemarks(String? name) {
    if (name != null && name.isEmpty) {
      return 'Please enter main schedule remarks';
    }
    return null;
  }

  static String? checkSubScheduleName(String? name) {
    if (name != null && name.isEmpty) {
      return 'Please enter sub schedule name';
    }
    return null;
  }

  static String? checkSubScheduleRemarks(String? name) {
    if (name != null && name.isEmpty) {
      return 'Please enter sub schedule remarks';
    }
    return null;
  }

  static String? checkLedgerGroupName(String? name) {
    if (name != null && name.isEmpty) {
      return 'Please enter ledger group name';
    }
    return null;
  }

  static String? checkLedgerGroupRemarks(String? name) {
    if (name != null && name.isEmpty) {
      return 'Please enter ledger group remarks';
    }
    return null;
  }

  static String? checkGeneralLedgerName(String? name) {
    if (name != null && name.isEmpty) {
      return 'Please enter general ledger name';
    }
    return null;
  }

  static String? checkGeneralLedgerRemark(String? name) {
    if (name != null && name.isEmpty) {
      return 'Please enter general ledger remarks';
    }
    return null;
  }
}
