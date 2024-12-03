import 'package:xwood/core/utils/constants/lable_name_const.dart';

class TextFieldValidator {
  // regex validation
  static final RegExp _usernameRegex = RegExp("source");
  static final RegExp _password8Regex = RegExp(
    "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}",
  );
  static final RegExp _password12Regex = RegExp(
    "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@!%*?&])[A-Za-z\d@!%*?&#\^]{12,}",
  );
  static final RegExp _phoneRegex = RegExp(
    "(\(?([\d \-\)\–\+\/\(]+)\)?([ .\-–\/]?)([\d]+))",
  );
  static final RegExp _emailRegex = RegExp(
    "^([\w\-\.]+@(?!gmail.com)(?!hotmail.com)([\w\- ]+\.)+[\w-]{2,4})?",
  );
  static final RegExp _domainRegex = RegExp(
    "^[a-zA-Z0-9.!#%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*",
  );
  static final RegExp _addressRegex = RegExp(
    "^([a-zA-z0-9/\\''(),-\s]{2,255})",
  );

  static String? usernameValidator(String value) {
    if ((value != null) && _usernameRegex.hasMatch(value)) {
      return value;
    } else {
      return AppLables.requiredNameLabel;
    }
  }

  static String? passwordValidator(String value) {
    if ((value != null) && _password8Regex.hasMatch(value)) {
      return value;
    } else {
      return AppLables.requiredPasswordLabel;
    }
  }

  static String? emailValidator(String value) {
    if ((value != null) && _emailRegex.hasMatch(value)) {
      return value;
    } else {
      return AppLables.requiredEmailLabel;
    }
  }

  static String? confirmPasswordValidator(
    String? password,
    String? confirmPassword,
  ) {
    if ((confirmPassword != null) && (password == confirmPassword)) {
      return confirmPassword;
    } else {
      return AppLables.requiredConfirmPasswordLabel;
    }
  }
}
