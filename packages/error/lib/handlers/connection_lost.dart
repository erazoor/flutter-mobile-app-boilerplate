import 'package:flutter/material.dart';

import '../screens/connection_lost.dart';

class ConnectionLostError {
  static void handleError(BuildContext context, dynamic error) {
    _showConnectionLostScreen(context);
  }

  static void _showConnectionLostScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ConnectionLostScreen(),
      ),
    );
  }
}
