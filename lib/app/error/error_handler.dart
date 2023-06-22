import 'package:flutter/material.dart';

import 'package:error/handlers/connection_lost.dart' as connection_lost;
import 'package:error/handlers/generic_error.dart' as generic_error;

import 'package:flutter_mobile_app_boilerplate/app/utils/device_utils.dart' as device_utils;

class ErrorHandler {
  static void handleError(BuildContext context, dynamic error) async {
    if (await device_utils.DeviceUtils.checkConnection() == true) {
      connection_lost.ConnectionLostError.handleError(context, error);
    } else {
      generic_error.GenericError.handleError(context, error);
    }
  }
}
