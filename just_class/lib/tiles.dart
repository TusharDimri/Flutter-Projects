import 'package:flutter/material.dart';
import 'package:just_class/calling_constructor.dart';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

// import 'package:dio/dio.dart';

class Tiles extends StatefulWidget {
  @override
  _TilesState createState() => _TilesState();
}

class _TilesState extends State<Tiles> {
  @override
  void initState() {
    super.initState();
    getHttpData();
  }

  // Fetching Data Using Dio Package :-

  // getDioData() async {
  //   var dio = Dio();
  //   Response response =
  //       await dio.get('https://jsonplaceholder.typicode.com/photos');
  //   print(response.data[0]["title"]);
  // }

  // Fetching Data Using http Package :-

  getHttpData() async {
    // Await the http get response, then decode the json-formatted response.
    http.Response response =
        await http.get('https://jsonplaceholder.typicode.com/photos');
    if (response.statusCode == 200) {
      // Status code 200 means that we got a response.
      var data = convert.jsonDecode(response.body);
      // print(data);
      setState(() {});
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  var list = ConstructList();

  @override
  Widget build(BuildContext context) {
    // getDioData();
    // getHttpData();
    return Scaffold(
        body: ListView.builder(
            itemCount: list.student.length,
            itemBuilder: (BuildContext context, index) {
              return ListTile(
                title: Text('${list.listName(index)}'),
                subtitle: Text("${list.listRollNo(index)}"),
              );
            }));
  }
}
