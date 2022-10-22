import 'package:flutter/material.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.deepPurple),
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
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.drive_file_rename_outline_sharp),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                clipBehavior: Clip.none,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 580,
                      clipBehavior: Clip.none,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const Image(
                            image: AssetImage("assets/images/pic.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Positioned(
                      bottom: 200,
                      left: 100,
                      child: Column(
                        children: const [
                          Text(
                            textAlign: TextAlign.center,
                            "Andrew Tete",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            "Andrew Tete",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
