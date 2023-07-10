import 'package:flutter/material.dart';

import 'package:flutter_mobile_app_boilerplate/app/themes/colors.dart'
    as app_colors;

class AppFonts {
  static const TextStyle h1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w800,
    letterSpacing: -1.5,
    fontFamily: 'Roboto, sans-serif',
  );
}

class ErrorFonts {
  static const TextStyle errorMessage = TextStyle(
    color: app_colors.ErrorColors.primary,
    fontSize: 24,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    fontFamily: 'Roboto, sans-serif',
  );
}