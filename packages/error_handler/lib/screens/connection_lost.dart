import 'package:flutter/material.dart';

class ConnectionLostScreen extends StatelessWidget {
  const ConnectionLostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          /*Image.asset(
            "lib/assets/images/connection_lost.png", // Todo -> Fix path
            fit: BoxFit.cover,
          ),*/
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.12,
            left: MediaQuery.of(context).size.width * 0.065,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 5),
                    blurRadius: 25,
                    color: const Color(0xFF59618B).withOpacity(0.17),
                  ),
                ],
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6371AA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  // Refresh the app
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    "/",
                    (route) => false,
                  );
                },
                child: Text(
                  "retry".toUpperCase(),
                  style: const TextStyle(color: Colors.white),
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}