import 'package:flutter/material.dart';
import 'package:like_me/header.dart';

class WelcomeScreen extends StatefulWidget {
  final String email;
  final String password;
  final String? username;
  const WelcomeScreen(
      {super.key, required this.email, required this.password, this.username});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final headi = HeaderAppBar();
  @override
  Widget build(BuildContext context) {
    return headi.scafoldFunc(bodyFunc());
  }

  Widget bodyFunc() {
    return Center(
      child: Column(
        children: [
          const Text("Welcome"),
          Text(widget.email),
          Text(widget.password),
          Text(widget.username.toString())
        ],
      ),
    );
  }
}
