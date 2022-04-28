import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: Center(
      child: Container(
        child: ListView(
          children: [
            Icon(Icons.call),
            Column(
              children: [Text("(650) 555-1234"), Text("Mobilessss")],
            ),
            Icon(Icons.add_comment),
          ],
        ),
      ),
    ),
  )));
}
