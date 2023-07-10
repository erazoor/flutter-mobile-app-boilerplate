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
    performAsyncTask();
  }

  Future<void> performAsyncTask() async {
    try {
      // Your asynchronous task that may throw an error
      await Future.delayed(const Duration(seconds: 3));
      // Simulating an error for demonstration purposes
    } catch (error) {
      throw Exception('An error occurred!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: 
          Text(
            'Welcome to the Home Page!',
            style: app_fonts.AppFonts.h1,
          ),
      ),
    );
  }
}
