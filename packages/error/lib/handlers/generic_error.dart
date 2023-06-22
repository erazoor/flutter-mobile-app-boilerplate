import 'package:flutter/material.dart';

import '../screens/generic_error.dart';

class GenericError {
  static void handleError(BuildContext context, dynamic error) {
    _showGenericErrorScreen(context);
  }

  static void _showGenericErrorScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const GenericErrorScreen(),
      ),
    );
  }
}
