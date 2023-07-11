import 'package:flutter/material.dart';

import 'package:flutter_mobile_app_boilerplate/app/config/routes.dart';
import 'package:flutter_mobile_app_boilerplate/app/views/home_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case GenericRoutes.homeRoute:
      return MaterialPageRoute(builder: (context) => const HomePage());
    default:
      return MaterialPageRoute(builder: (context) => const HomePage());
  }
}