import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Column(
      children: const [
        SizedBox(
          height: 300,
        ),
        Card(
          child: ListTile(
            title: Text("(477)181818"),
            subtitle: Text("Mobile"),
            leading: Icon(Icons.call),
            trailing: Icon(Icons.add_comment),
          ),
        ),
        Card(
          child: ListTile(
            title: Text("(477)181818"),
            subtitle: Text("Mobile"),
            leading: Text(""),
            trailing: Icon(Icons.add_comment),
          ),
        )
      ],
    ))));
  }
}
