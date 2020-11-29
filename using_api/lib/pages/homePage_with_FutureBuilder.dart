import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:using_api/utils/Constants.dart';
import 'dart:convert';
import '../widgets/MyDrawer.dart';

class HomePageFB extends StatefulWidget {
  @override
  _HomePageFBState createState() => _HomePageFBState();
}

class _HomePageFBState extends State<HomePageFB> {
  Future getData() async {
    var url = "https://jsonplaceholder.typicode.com/photos";
    var data;
    var res = await http.get(url);
    // print(res);
    data = jsonDecode(res.body);
    // print(data);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        // backgroundColor: Colors.pink[200],
        title: Text("Awesome App"), // Title of our App Bar
        actions: [
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                Constants.prefs.setBool("LoggedIn", false);
                Navigator.pushReplacementNamed(context, "/login");
              })
        ],
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Center(child: Text("Fetch Something"));
              case ConnectionState.active:
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              case ConnectionState.done:
                if (snapshot.hasError) {
                  return Center(child: Text("Some Error Ocuured"));
                }
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Image.network(snapshot.data[index]["url"]),
                        title: Text(snapshot.data[index]["title"]),
                        subtitle: Text("ID :- ${snapshot.data[index]["id"]}"),
                      ),
                    );
                  },
                );
            }
          }),
      drawer: MyDrawer(),
    );
  }
}
