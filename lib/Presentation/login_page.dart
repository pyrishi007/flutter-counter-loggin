import 'package:flutter/material.dart';
import 'counter_page.dart'; // Import the CounterPage

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  // Function to navigate to the CounterPage
  void _login(BuildContext context) {
    // Simply navigate to CounterPage (no validation needed)
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const CounterPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Username input field
            TextField(
              decoration: const InputDecoration(
                labelText: 'Username', 
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            // Password input field
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            // Login button
            ElevatedButton(
              onPressed: () => _login(context), // When pressed, navigate to CounterPage
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
