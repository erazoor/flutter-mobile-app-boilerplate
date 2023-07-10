import 'package:flutter/foundation.dart';

class UserProvider with ChangeNotifier {
  String? bearerToken;
  int? userId;

  void setUser(String token, int id) {
    bearerToken = token;
    userId = id;
    notifyListeners();
  }
}
