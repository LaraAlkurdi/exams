class MapUtil {
  static isValidNumber(String value) {
    RegExp regExp =
        RegExp(r'^(?:\+971|00971|0)?(?:50|51|52|55|56|2|3|4|6|7|9)\d{7}$');

    return regExp.hasMatch(value);
  }

  static bool isPassword(String value) {
    RegExp regExp = new RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$%^&*])[A-Za-z0-9!@#\$%^&*]{8,20}$');
    return regExp.hasMatch(value);
  }

  static bool isAge(String value) {
    RegExp regExp = new RegExp(r'^(1[89]|[2-9]\d)$');
    return regExp.hasMatch(value);
  }

  static bool isAgeValid(String ageText) {
    int age = int.tryParse(ageText) ?? 0;
    return age > 18;
  }

  static bool isFirstName(String value) {
    RegExp regExp =
        RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return regExp.hasMatch(value);
  }

  static bool isLastName(String value) {
    RegExp regExp = RegExp(r"^\s*([A-Za-z]{1,})*$");
    return regExp.hasMatch(value);
  }

  static bool isName(String value) {
    RegExp regExp =
        RegExp(r"^(?=[a-zA-Z0-9._]{8,20}$)(?!.*[_.]{2})[^_.].*[^_.]$");
    return regExp.hasMatch(value);
  }

  static bool isEmail(String value) {
    RegExp regExp = new RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    return regExp.hasMatch(value);
  }
}
