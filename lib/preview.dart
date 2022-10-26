import 'package:flutter/material.dart';
import 'package:like_me/header.dart';

class PreviewScreen extends StatefulWidget {
  final String username;
  final String mobileNumber;
  final String password;

  const PreviewScreen(
      {super.key,
      required,
      required this.username,
      required this.mobileNumber,
      required this.password});

  @override
  State<PreviewScreen> createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  final HeaderAppBar header = HeaderAppBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header.addHeader(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ListTile(
              title: Text(widget.username.toUpperCase()),
            ),
            const Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text(widget.mobileNumber),
            ),
            const Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text(widget.password),
            ),
            const Divider(
              thickness: 2,
            ),
          ],
        ),
      )),
    );
  }
}
