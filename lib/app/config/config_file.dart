
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConfig {
  static String get apiUrl => dotenv.env['API_URL'] ?? '';
  static String get apiKey => dotenv.env['API_KEY'] ?? '';
}

class DatabaseConfig {
  static String get databaseName => dotenv.env['DATABASE_NAME'] ?? '';
  static String get databaseUsername => dotenv.env['DATABASE_USERNAME'] ?? '';
  static String get databasePassword => dotenv.env['DATABASE_PASSWORD'] ?? '';
  static String get databaseHost => dotenv.env['DATABASE_HOST'] ?? '';
  static int get databasePort => int.parse(dotenv.env['DATABASE_PORT'] ?? '3000');
}

class LogConfig {
  static const bool enableLogging = true;
  static const bool logToFile = true;
  static const String logFilePath = 'var/log/application.log';
}

class StrategiesConfig {
  static const bool enableGoogleStrategy = true;
  static const bool enableTwitterStrategy = true;
  static const bool enableJwtStrategy = true;
}

// Ui Constants
const String appName = 'Flutter Mobile App Boilerplate';

// Feature Flags
const bool kEnableFeatureA = true;
const bool kEnableFeatureB = false;
const bool kEnableFeatureC = true;
