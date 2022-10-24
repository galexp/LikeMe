import 'package:flutter/material.dart';

class HeaderAppBar {

  Color primaryColor = Colors.purple;

  PreferredSizeWidget addHeader() {
    return AppBar(
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
    );
  }
}
