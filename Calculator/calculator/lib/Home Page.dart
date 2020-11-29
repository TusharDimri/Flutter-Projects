import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1, num2;
  double output = 0.0;

  final TextEditingController t1 = TextEditingController(text: "");
  final TextEditingController t2 = TextEditingController(text: "");

  void add() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      output = num1 + num2;
    });
  }

  void difference() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      output = num1 - num2;
    });
  }

  void multiply() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      output = num1 * num2;
    });
  }

  void divide() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      output = num1 / num2;
    });
  }

  void clear() {
    setState(() {
      t1.text = "";
      t2.text = "";
      output = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Calculator App"),
        ),
        body: Container(
          padding: EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Output:$output",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter First Number",
                ),
                controller: t1,
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Second Number",
                ),
                controller: t2,
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    color: Colors.redAccent,
                    onPressed: () {
                      add();
                    },
                    child: Text("+"),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  MaterialButton(
                    color: Colors.redAccent,
                    onPressed: () {
                      difference();
                    },
                    child: Text("-"),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    color: Colors.redAccent,
                    onPressed: () {
                      multiply();
                    },
                    child: Text("x"),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  MaterialButton(
                    color: Colors.redAccent,
                    onPressed: () {
                      divide();
                    },
                    child: Text("/"),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    color: Colors.redAccent,
                    onPressed: () {
                      clear();
                    },
                    child: Text("Clear"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
