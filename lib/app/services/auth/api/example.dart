import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

import 'package:flutter_mobile_app_boilerplate/app/config/config_file.dart'
    as config;
import 'package:flutter_mobile_app_boilerplate/app/error/error_constants.dart'
    as errors;

class Example {
  static final Map<String, String> headers = {
    'Content-Type': 'application/json',
  };

  static final Logger _logger = Logger('Example');

  static Future<dynamic> example() async {
    Uri url = Uri.parse(config.ApiConfig.apiUrl);
    try {
      http.Response response = await http.get(url, headers: headers);

      if (response.statusCode != errors.kErrorCodeServer) {
        _logger.severe('Failed: ${response.statusCode}\n${errors.kErrorMessageServer}');
        throw Exception('Failed: ${response.statusCode}\n${errors.kErrorMessageServer}');
      }

      // Process the response

    } catch (error, stackTrace) {
      _logger.severe('Failed', error, stackTrace);
      throw Exception('Failed: $error');
    }
  }
}
