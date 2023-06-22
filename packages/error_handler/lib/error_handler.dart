library error_handler;

import 'dart:developer';

import 'package:connectivity/connectivity.dart';
import 'package:error_handler/screens/connection_lost.dart';
import 'package:flutter/material.dart';

class ErrorHandler {
  static void handleError(dynamic error, {BuildContext? context}) {
    // Implement your error handling logic here
    // You can add specific error handling cases based on the type of error
    
    if (error is NetworkErrorException) {
      // Handle network error
      // Log error, display error message, or perform any other actions
      Navigator.push(
        context ?? NavigatorState().context,
        MaterialPageRoute(builder: (context) => const ConnectionLostScreen())
      );
      log('Network Error: $error');
    } else if (error is DatabaseErrorException) {
      // Handle database error
      // Log error, display error message, or perform any other actions
      log('Database Error: $error');
    } else {
      // Handle other types of errors
      // Log error, display generic error message, or perform any other actions
      log('Unknown Error: $error');
    }
  }
}

class NetworkErrorException implements Exception {
  Future<bool> hasInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return true; // Internet connection is available
    } else {
      return false; // Internet connection is not available
    }
  }
}

class DatabaseErrorException implements Exception {
  // Custom properties and methods related to the database error
}
