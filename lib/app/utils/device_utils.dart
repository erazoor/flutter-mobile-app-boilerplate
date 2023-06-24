import 'package:location/location.dart';
import 'package:connectivity/connectivity.dart';

class DeviceUtils {
  Future<bool> hasInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return true; // Internet connection is available
    } else {
      return false; // Internet connection is not available
    }
  }

  static Future<bool> isLocationEnabled() async {
    var serviceEnabled = await Location().serviceEnabled();
    return serviceEnabled;
  }
}
