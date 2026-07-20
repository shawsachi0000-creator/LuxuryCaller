import 'home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Icon(
                Icons.phone_in_talk,
                size: 100,
                color: Colors.greenAccent,
              ),

              const SizedBox(height: 20),

              const Text(
                "Luxury Caller",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Sign in to continue",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 40),

              TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Phone Number",
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white12,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    ),
  );
},
                  child: const Text("Continue"),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "OR",
                style: TextStyle(color: Colors.white),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.login),
                  label: const Text("Continue with Google"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
