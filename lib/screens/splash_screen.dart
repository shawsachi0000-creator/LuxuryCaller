import 'package:flutter/material.dart';
import 'dart:async';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (_) => const LoginScreen(),
    ),
  );
});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [

            Icon(
              Icons.phone_in_talk,
              size: 100,
              color: Colors.greenAccent,
            ),

            SizedBox(height: 20),

            Text(
              "Luxury Caller",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "Premium Caller ID",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),

            SizedBox(height: 40),

            CircularProgressIndicator(
              color: Colors.greenAccent,
            )

          ],
        ),
      ),
    );
  }
}
