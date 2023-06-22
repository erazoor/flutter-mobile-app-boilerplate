import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_mobile_app_boilerplate/app/themes/fonts.dart'
    as app_fonts;

class HomePage extends StatefulWidget {
  const HomePage({Key ?key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    log('Home Page Initialized');
    throw Exception('Test Error');
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Welcome to the Home Page!',
          style: app_fonts.AppFonts.h1,
        ),
      ),
    );
  }
}
