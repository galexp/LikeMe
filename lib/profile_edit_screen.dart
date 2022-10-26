import 'package:flutter/material.dart';
import 'package:like_me/header.dart';
import 'package:like_me/welcome.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({super.key});

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  final headi = HeaderAppBar();
  final formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headi.addHeader(),
      backgroundColor: Colors.white,
      body: Form(
        key: formKey,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                controller: email,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Email Address needed";
                  }
                  if (!value.contains(RegExp(r'@.[.com]'))) {
                    return "Not a valid email address";
                  }
                },
                decoration: const InputDecoration(
                    hintText: "Enter Email Address",
                    labelText: "Email Address",
                    icon: Icon(Icons.email)),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: password,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Password needed";
                  }
                },
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                    icon: Icon(Icons.key)),
              ),
              const SizedBox(
                height: 40,
              ),
              TextButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return WelcomeScreen(
                        email: email.text,
                        password: password.text,
                      );
                    }));
                  }
                },
                style: TextButton.styleFrom(
                    backgroundColor: headi.primaryColor,
                    minimumSize: const Size(double.infinity, 40)),
                child: const Text(
                  "Log In",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
