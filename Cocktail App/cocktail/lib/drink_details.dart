import 'package:cocktail/main.dart';
import 'package:flutter/material.dart';

class drinkDetails extends StatelessWidget {
  final drink;
  const drinkDetails({Key key, @required this.drink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [myColor, Colors.orange])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(drink["strDrink"]),
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: drink["idDrink"],
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: NetworkImage(drink["strDrinkThumb"] ??
                      "https://www.thermaxglobal.com/wp-content/uploads/2020/05/image-not-found.jpg"),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "ID:-${drink["idDrink"]}",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "${drink["strDrink"]}",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
