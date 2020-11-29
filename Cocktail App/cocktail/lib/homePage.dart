import 'package:cocktail/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:cocktail/drink_details.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var url = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail";
  var res;
  var drinks;

  @override
  void initState() {
    super.initState();

    // Fetching data from api:-
    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    // print(res.body);
    drinks = jsonDecode(res.body)["drinks"];
    // print(drinks);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [myColor, Colors.orange])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("Cocktail App"),
          centerTitle:
              true, // This aligns the title to the center of the appbar
          elevation: 0.0,
        ),
        body: Center(
          child: drinks != null
              ? ListView.builder(
                  itemCount: drinks.length,
                  itemBuilder: (BuildContext context, int index) {
                    var drink = drinks[index];
                    return ListTile(
                      leading: Hero(
                        tag: drink["idDrink"],
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                                  drink["strDrinkThumb"]) ??
                              "https://www.thermaxglobal.com/wp-content/uploads/2020/05/image-not-found.jpg",
                        ),
                      ),
                      title: Text(
                        "${drink["strDrink"]}",
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      subtitle: Text(
                        "${drink["idDrink"]}",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    drinkDetails(drink: drink)));
                      },
                    );
                  },
                )
              : Center(
                  child:
                      CircularProgressIndicator(backgroundColor: Colors.white),
                ),
        ),
      ),
    );
  }
}
