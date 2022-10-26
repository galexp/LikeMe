import 'package:flutter/material.dart';
import 'package:like_me/header.dart';
import 'package:like_me/preview.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final HeaderAppBar header = HeaderAppBar();

  String input_value = "";

  final TextEditingController username = TextEditingController();
  final TextEditingController mobileNumber = TextEditingController();
  final TextEditingController password = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header.addHeader(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          clipBehavior: Clip.none,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  color: header.primaryColor,
                  padding: const EdgeInsets.all(15),
                  child: const Text(
                    "Profile Screen",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(input_value),
                      TextFormField(
                        controller: username,
                        // onChanged: (value) {
                        //   setState(() {
                        //     input_value = value;
                        //   });
                        // },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty!";
                          }

                          return null;
                        },
                        decoration: const InputDecoration(
                            hintText: "E.g @galexop",
                            labelText: "Username",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            icon: Icon(Icons.person)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        validator: ((value) {
                          if (value!.isEmpty) {
                            return "Mobile Number cannot be empty";
                          }
                          return null;
                        }),
                        controller: mobileNumber,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                            hintText: "E.g +234 0934 898 89845",
                            labelText: "Mobile Number",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            icon: Icon(Icons.phone)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          print(value);
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty!";
                          }
                          if (value.length < 8) {
                            return "Choose a secure password";
                          }
                          return null;
                        },
                        controller: password,
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "****",
                            labelText: "Password",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            icon: Icon(Icons.security)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "E.g Joe Deo",
                            labelText: "Full Name",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            icon: Icon(Icons.person_add)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            hintText: "E.g 23",
                            labelText: "Age",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            icon: Icon(Icons.h_plus_mobiledata)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Divider(
                        thickness: 1,
                        color: header.primaryColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: (() {
                          if (_formKey.currentState!.validate()) {
                            // final snackbar = SnackBar(
                            //     content: Text(
                            //         "My username is ${username.text} \nMobile Number is ${mobileNumber.text}\nPassword is ${password.text}"));

                            // ScaffoldMessenger.of(context)
                            //     .showSnackBar(snackbar);
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return PreviewScreen(
                                  username: username.text,
                                  mobileNumber: mobileNumber.text,
                                  password: password.text);
                            }));
                          }
                        }),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: header.primaryColor,
                          elevation: 0,
                          minimumSize: const Size(double.infinity, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0)),
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontStyle: FontStyle.normal),
                        ),
                        child: const Text('Save'),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
