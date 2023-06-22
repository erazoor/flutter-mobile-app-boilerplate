import 'package:flutter/material.dart';

import 'package:flutter_mobile_app_boilerplate/app/error/handlers/connection_lost.dart'
    as connection_lost;
import 'package:flutter_mobile_app_boilerplate/app/utils/device_utils.dart' 
    as device_utils;

class ErrorHandler {
  static void handleError(BuildContext context, dynamic error) async {
    if (device_utils.DeviceUtils.checkConnection() == true) {
      connection_lost.ConnectionLostError.handleError(context, error);
    } else {
      _showGenericErrorScreen(context);
    }
  }

  static void _showGenericErrorScreen(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: const Text('An error occurred.'),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
