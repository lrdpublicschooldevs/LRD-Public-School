import 'package:flutter/material.dart';

class LoginPag extends StatefulWidget {
  const LoginPag({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPag> {
  // ... (your other login page variables)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Login"),
      ),
      body: SingleChildScrollView( // Scroll the body to avoid content overflow
        child: Padding(
          padding: const EdgeInsets.only(top: 250,left: 20,right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100), // Add space above the form
              TextField(
                decoration: const InputDecoration(labelText: 'Username or Email'),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Your login logic here
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
