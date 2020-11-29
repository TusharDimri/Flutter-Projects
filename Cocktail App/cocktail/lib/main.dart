import 'package:flutter/material.dart';
import 'package:cocktail/homePage.dart';

const Color myColor = Colors.pink;

void main() {
  runApp(MyApp());
}

// Stateless And Statefulm Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cocktail App",
      theme: ThemeData(
        primarySwatch: myColor,
        fontFamily: "Pacifico",
      ),
      home: HomePage(),
    );
  }
}
