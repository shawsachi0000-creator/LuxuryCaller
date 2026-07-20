import 'home_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Luxury Caller"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search Mobile Number",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: const Text("No Search Yet"),
                subtitle: const Text("Search a number to see details"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
