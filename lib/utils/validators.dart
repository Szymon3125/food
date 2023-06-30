class Validators {
  static String? required(dynamic value) {
    if (value == null) {
      return 'To pole jest wymagane!';
    }

    if (value is String && value.isEmpty) {
      return 'To pole jest wymagane!';
    }

    return null;
  }

  static String? email(String? value) {
    if (value == null) {
      return null;
    }

    RegExp regExp = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

    if (!regExp.hasMatch(value)) {
      return "Niepoprawny adres email!";
    }

    return null;
  }

  static String? password(String? value) {
    if (value == null) {
      return null;
    }

    if (value.length < 8) {
      return 'Hasło musi zawierać minimum 8 znaków';
    }

    return null;
  }

  static String? repeatPassword(String? password, String? repeat) {
    if (password != repeat) {
      return 'Hasła nie są identyczne';
    }

    return null;
  }
}
