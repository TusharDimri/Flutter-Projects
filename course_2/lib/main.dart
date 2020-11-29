import 'package:flutter/material.dart'; // For Android Development
import 'package:flutter/cupertino.dart'; // For IOS Development

// Note :- Material Design and Cupertino work in both Andriod and Ios.

import 'package:course_2/pages/homepage.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App", // Title ff our App
    home: MyApp(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}
