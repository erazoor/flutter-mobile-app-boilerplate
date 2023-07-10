import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

import 'package:flutter_mobile_app_boilerplate/app/config/config_file.dart'
    as config;

class Example {
  static final Map<String, String> headers = {
    'Content-Type': 'application/json',
  };

  static final Logger _logger = Logger('Example');

  static Future<dynamic> example() async {
    Uri url = Uri.parse(config.ApiConfig.apiUrl);
    try {
      http.Response response = await http.get(url, headers: headers);

      if (response.statusCode != 200) {
        _logger.severe('Failed: ${response.statusCode}');
        throw Exception('Failed: ${response.statusCode}');
      }

      // Process the response

    } catch (error, stackTrace) {
      _logger.severe('Failed to remove favorite', error, stackTrace);
      throw Exception('Failed to remove favorite: $error');
    }
  }
}
