import 'package:flutter/material.dart';

void main() {
  runApp(const LikeMee());
}

class LikeMee extends StatelessWidget {
  const LikeMee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LIKEMEE",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "LIKE",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                      fontSize: 25),
                ),
                Text(
                  "MEE",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      fontSize: 25),
                ),
              ],
            ),
          ),
          body: const ActionClickEvent()),
    );
  }
}

class ActionClickEvent extends StatefulWidget {
  const ActionClickEvent({super.key});

  @override
  State<ActionClickEvent> createState() => _ActionClickEventState();
}

class _ActionClickEventState extends State<ActionClickEvent> {
  String lonelyChange = "NO MORE \nLONELY DAYS";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Image(
            image: AssetImage('assets/images/boy.jpg'),
            width: 400,
            height: 400,
          ),
          Text(
            lonelyChange,
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0, top: 80.0),
            child: ElevatedButton(
              onPressed: (() {
                setState(() {
                  lonelyChange = "WELCOME TO \n MY LIFE";
                });
              }),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                elevation: 0,
                minimumSize: const Size(250, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)),
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontStyle: FontStyle.normal),
              ),
              child: const Text('get started'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0, top: 0),
            child: ElevatedButton(
              onPressed: (() {
                setState(() {
                  lonelyChange = "BE MY BABE  \nAND BOO";
                });
              }),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 0,
                minimumSize: const Size(150, 50),
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600),
              ),
              child: const Text(
                'login with email',
                style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
    );
  }
}
