import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100.0,
            backgroundColor: Colors.white,
            elevation: 1.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.home,
                    size: 35.0,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "FluxStore",
                  style: TextStyle(
                      fontSize: 25.0, fontFamily: 'Arial', color: Colors.grey),
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Container(
                height: 120.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(20),
                  children: [
                    itemColumn("Ventas", Icons.account_circle),
                    itemColumn("Compras", Icons.account_circle),
                    itemColumn("Clientes", Icons.account_circle),
                    itemColumn("Proveedores", Icons.account_circle),
                    itemColumn("Ventas", Icons.account_circle),
                    itemColumn("Compras", Icons.account_circle),
                    itemColumn("Clientes", Icons.account_circle),
                    itemColumn("Proveedores", Icons.account_circle),
                  ],
                ),
              ),
              Expanded(
                  child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                          'https://mitsoftware.com/wp-content/uploads/2020/12/flutter-1.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                          'https://mitsoftware.com/wp-content/uploads/2020/12/flutter-1.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                          'https://mitsoftware.com/wp-content/uploads/2020/12/flutter-1.jpg'),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ));
  }

  Widget itemColumn(String texto, IconData icono) {
    return InkWell(
      onTap: () {
        print('Has dado click en: $texto');
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Icon(
              icono,
              size: 40,
              color: Colors.blue,
            ),
            const Spacer(),
            Text(
              texto,
              style: const TextStyle(
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
