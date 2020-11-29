import 'package:flutter/material.dart';

import 'package:course_2/change_name_card.dart';
import 'package:course_2/drawer.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change Me";
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        // backgroundColor: Colors.pink[200],
        title: Text("Awesome App"), // Title of our App Bar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          // Scrolling to prevent roors
          child: Card(
            child:
                ChangeNameCard(myText: myText, nameController: _nameController),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          // We need to chaange state on pressing the button so we will call setState() method.
          setState(() {});
        },
        child: Icon(Icons.refresh),
        // Check Out Different Floating Action Buttons snd find the one which suits ypur usecase the besr.

        // mini: true,
        // This reduce the size of our button
      ),
      drawer: MyDrawer(),
    );
  }
}
