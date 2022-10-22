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
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 550,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/pic.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "Andrew Tete, 42",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 24),
                      ),
                      const Text(
                        "Fashion Designer",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.cancel)),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.favorite)),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  decoration: const BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.video_camera_front)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.home)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.chat_bubble)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.person)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
