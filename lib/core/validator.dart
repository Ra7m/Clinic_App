class MyValidators {
  static var validate;

  static String? displayNameValidator(String? displayName) {
    if (displayName == null || displayName.isEmpty) {
      return 'Please enter your name';
    }
    if (displayName.length < 3 || displayName.length > 15) {
      return ' name must be between 3 and 15characters';
    }

    return null;
  }

  static String? emailValidator(String? value) {
    if (value!.isEmpty) {
      return 'Please enter an email';
    }
    if (!RegExp(r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b')
        .hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value!.isEmpty) {
      return 'Please enter a password';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    return null;
  }

  static String? repeatPasswordValidator(
      {String? value, String? password, required dynamic labelText}) {
    if (labelText == 'Confirm Password') {
      if (value != password) {
        return 'Password does not match';
      }
    }
    return null;
  }
}
