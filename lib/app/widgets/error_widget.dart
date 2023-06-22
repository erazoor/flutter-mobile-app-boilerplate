import 'package:flutter/material.dart';

import 'package:flutter_mobile_app_boilerplate/app/themes/fonts.dart'
    as app_fonts;

class CustomErrorWidget extends StatelessWidget {
  final String ?errorMessage;

  const CustomErrorWidget({Key ?key, this.errorMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          errorMessage ?? 'Oops! Something went wrong.',
          style: app_fonts.AppFonts.errorMessage,
        ),
      ),
    );
  }
}
