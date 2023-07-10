import 'package:location/location.dart';
import 'package:connectivity/connectivity.dart';
import 'package:permission_handler/permission_handler.dart' as permissionHandler;

class DeviceUtils {
  Future<bool> hasInternetConnection() async {
    ConnectivityResult connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi;
  }

  static Future<bool> isLocationEnabled() async {
    return await Location().serviceEnabled();
  }

  static Future<bool> isLocationPermissionGranted() async {
    PermissionStatus permissionGranted = await Location().hasPermission();
    return permissionGranted == PermissionStatus.granted;
  }

  static Future<bool> isCameraPermissionGranted() async {
    PermissionStatus permissionGranted = (await permissionHandler.Permission.camera.status) as PermissionStatus;
    return permissionGranted == PermissionStatus.granted;
  }

  static Future<bool> isStoragePermissionGranted() async {
    PermissionStatus permissionGranted = (await permissionHandler.Permission.storage.status) as PermissionStatus;
    return permissionGranted == PermissionStatus.granted;
  }

  static Future<bool> isMicrophonePermissionGranted() async {
    PermissionStatus permissionGranted = (await permissionHandler.Permission.microphone.status) as PermissionStatus;
    return permissionGranted == PermissionStatus.granted;
  }

  static Future<bool> isContactsPermissionGranted() async {
    PermissionStatus permissionGranted = (await permissionHandler.Permission.contacts.status) as PermissionStatus;
    return permissionGranted == PermissionStatus.granted;
  }

  static Future<bool> isPhonePermissionGranted() async {
    PermissionStatus permissionGranted = (await permissionHandler.Permission.phone.status) as PermissionStatus;
    return permissionGranted == PermissionStatus.granted;
  }

  static Future<bool> isSmsPermissionGranted() async {
    PermissionStatus permissionGranted = (await permissionHandler.Permission.sms.status) as PermissionStatus;
    return permissionGranted == PermissionStatus.granted;
  }

  static Future<bool> isCalendarPermissionGranted() async {
    PermissionStatus permissionGranted = (await permissionHandler.Permission.calendar.status) as PermissionStatus;
    return permissionGranted == PermissionStatus.granted;
  }
}
