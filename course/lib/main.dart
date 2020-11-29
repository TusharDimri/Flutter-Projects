import 'package:flutter/material.dart'; // For Android Development

import 'package:flutter/cupertino.dart'; // For IOS Development

// Note :- Material Design and Cupertino work in both Andriod and Ios.

void main() {
  runApp(MaterialApp(
    title: "Awesome App", // Title Of out App
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        title: Text("Awesome App"), // Title of our App Bar
      ),
      body: Align(
        // alignment: Alignment.centerLeft,

        // Akignment is center by default
        // Check out the different properties of Alignment Widget
        child: Container(
          color: Colors.pink[100],

          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          // Above 2 lines of code gives the container height and width that is the max for the device.

          width: 200,
          height: 400,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // Check out all the different attributes of main axis alignment and use the one that fits your usecase the best.

            crossAxisAlignment: CrossAxisAlignment.center,
            // Check out all the different attributes of cross axis alignment and use the one that fits your usecase the best.

            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                // color: Colors.blueAccent,
                alignment: Alignment.center,
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    gradient: LinearGradient(colors: [
                      Colors.yellow,
                      Colors.pink,
                      // Colors.blue,
                    ]),

                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 1,
                          offset: Offset(5, 6))
                    ]), // If we give color outside box decoration we will get an error
                child: Text(
                  "I am a Box",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                // color: Colors.blueAccent,
                alignment: Alignment.center,
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    gradient: LinearGradient(colors: [
                      Colors.yellow,
                      Colors.pink,
                      // Colors.blue,
                    ]),

                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 1,
                          offset: Offset(5, 6))
                    ]), // If we give color outside box decoration we will get an error
                child: Text(
                  "I am a Box",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                // color: Colors.blueAccent,
                alignment: Alignment.center,
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    gradient: LinearGradient(colors: [
                      Colors.yellow,
                      Colors.pink,
                      // Colors.blue,
                    ]),

                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 1,
                          offset: Offset(5, 6))
                    ]), // If we give color outside box decoration we will get an error
                child: Text(
                  "I am a Box",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
