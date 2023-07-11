import 'package:flutter/material.dart';

import 'package:logging/logging.dart';

import 'package:flutter_mobile_app_boilerplate/app/config/routes.dart';
import 'package:flutter_mobile_app_boilerplate/app/views/home_page.dart';
import 'package:flutter_mobile_app_boilerplate/app/utils/router.dart' 
    as router;
import 'package:flutter_mobile_app_boilerplate/app/config/config_file.dart'
    as config;
import 'package:flutter_mobile_app_boilerplate/app/themes/colors.dart'
    as app_colors;
import 'package:flutter_mobile_app_boilerplate/app/themes/fonts.dart'
    as app_fonts;

void main() {
  if(config.LogConfig.enableLogging) {
    Logger.root.level = Level.ALL; // Includes all severity levels (see at: https://pub.dev/packages/logging)
    Logger.root.onRecord.listen((record) {
      if (config.LogConfig.logToFile) {
        _logToFile(record);
      }
      
      print('${record.level.name}: \n${record.time}: \n${record.message}');
    });
  }

  ErrorWidget.builder = (FlutterErrorDetails details) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: app_colors.ErrorColors.primaryBackgroundColor,
        body: Center(
          child: Text(
            'Error: ${details.exception}',
            style: app_fonts.ErrorFonts.errorMessage,
          ),
        ),
      ),
    );
  };
  
  Logger logger = Logger('MyApp');
  logger.info('Starting app...');
  runApp(const MyApp());
}

void _logToFile(LogRecord record) {
  print('Writing log to file: ${record.level.name}: ${record.message}');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: config.appName,
      home: HomePage(),
      onGenerateRoute: router.generateRoute,
      initialRoute: GenericRoutes.homeRoute,
    );
  }
}
