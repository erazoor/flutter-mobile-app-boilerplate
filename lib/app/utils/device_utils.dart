import 'dart:io';
import 'package:location/location.dart';

class DeviceUtils {
  static Future<bool> checkConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {
      return false;
    }
    return false;
  }

  static Future<bool> isLocationEnabled() async {
    var serviceEnabled = await Location().serviceEnabled();
    return serviceEnabled;
  }
}
