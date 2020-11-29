import 'package:flutter/material.dart';

import 'homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Love Calculator",
      theme: ThemeData(
        primaryColor: Colors.red,
        fontFamily: "Pacifico",
      ),
      home: HomeScreen(),
    );
  }
}
