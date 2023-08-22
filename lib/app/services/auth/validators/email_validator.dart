class EmailValidator {
  static String? validate(String value) {
    List<String> allowedDomains = [];
    String domain = value.split('@').last;

    if (value.isEmpty)
      return 'Email is required.';

    if (value.length > 255)
      return 'Email address is too long.';

    if (!allowedDomains.contains(domain))
      return 'Email address is not allowed.';

    final emailRegex = RegExp(
      r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)*(\.[a-zA-Z]{2,})$'
    );

    if (!emailRegex.hasMatch(value))
      return 'Invalid email format.';

    return 'Valid email.';
  }
}
