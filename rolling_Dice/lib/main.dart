import 'package:flutter/material.dart';

// import 'package:rolling_Dice/splash.dart';

import 'homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rolling Dice",
      home: HomeScreen(),
    );
  }
}
