import 'package:flutter/material.dart';

import 'package:flutter_mobile_app_boilerplate/app/config/config_file.dart'
    as config;
import 'package:flutter_mobile_app_boilerplate/app/widgets/error_widget.dart';

void main() {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: CustomErrorWidget(
            errorMessage: details.exception.toString(),
          ),
        ),
      ),
    );
  };
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: config.app_name);
  }
}
