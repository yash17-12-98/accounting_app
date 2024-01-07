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
}
