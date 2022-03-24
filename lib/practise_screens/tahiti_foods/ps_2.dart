import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Center(
              child: Text(
            "Sign In / Sign Up",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
        ],
      ),
    ));
  }
}
