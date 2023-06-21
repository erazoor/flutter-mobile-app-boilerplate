import 'package:flutter/material.dart';
import 'package:flutter_mobile_app_boilerplate/app/config/config_file.dart'
    as config;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: config.app_name);
  }
}
