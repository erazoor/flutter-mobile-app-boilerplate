class EmailValidator {
  static String? validate(String value) {
    if (value.isEmpty)
      return 'Email is required.';

    final emailRegex = RegExp(
      r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)*(\.[a-zA-Z]{2,})$'
    );


    if (!emailRegex.hasMatch(value))
      return 'Invalid email format.';

    return null;
  }
}
