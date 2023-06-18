import 'package:flutter/material.dart';
import 'pages/tabviwe.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:ThemeData(primaryColor: Color.fromARGB(255, 46, 106, 80)),
      home: Tabviwe(),
    );
  }
}






