import 'package:flutter/material.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({
    Key key,
    @required this.score,
  }) : super(key: key);

  final int score;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Colors.pink[100], Colors.red[100]])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "Love Calculator",
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            children: [
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Hero(
                      tag: 'lovegif',
                      child:
                          Image(image: AssetImage('assets/images/logo.gif'))),
                ),
              ),
              Text(
                "Your Score Is : $score",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
