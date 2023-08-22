class PasswordValidator {
  static String? validate(String value) {
    
    if (value.isEmpty)
      return 'Password is required.';

    if (value.length < 8)
      return 'Password must be at least 8 characters long.';

    final passwordRegex = RegExp(
      r'^(?=.*?[A-Z])' // At least one uppercase letter
      r'(?=.*?[a-z])' // At least one lowercase letter
      r'(?=.*?[0-9])' // At least one digit
      r'(?=.*?[!@#\$&*~])' // At least one special character
      r'.{8,}$' // Minimum length of 8 characters
    ); 


    if (!passwordRegex.hasMatch(value))
      return 'Password must contain at least one uppercase letter,' 
      'one lowercase letter, one digit, and one special character.';

    return 'Valid password.';
  }
}