import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:using_api/pages/homePage_with_FutureBuilder.dart';
import 'package:using_api/utils/Constants.dart';
import 'package:using_api/pages/LoginPage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Constants.prefs = await SharedPreferences.getInstance();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Using API",
    home: Constants.prefs.getBool("LoggedIn") == true
        ? HomePageFB()
        : LoginPage(),
    theme: ThemeData(primarySwatch: Colors.purple),
    routes: {
      "/login": (context) => LoginPage(),
      "/home": (context) => HomePageFB()
    },
  ));
}
