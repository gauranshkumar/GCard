import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 0.2, 0.4, 0.6, 0.8, 10.0],
            colors: [
              Colors.purpleAccent.shade400,
              Colors.purpleAccent.shade200,
              Colors.pinkAccent.shade100,
              Colors.redAccent.shade100,
              Colors.redAccent.shade200,
              Colors.redAccent.shade400,
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage("images/icon.jpeg"),
                ),
                Text(
                  "Gauransh Kumar",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: "Pacifico",
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey.shade900,
                  ),
                ),
                Text(
                  "Flutter & ML Developer".toUpperCase(),
                  style: TextStyle(
                    fontFamily: "Source Sans Pro",
                    letterSpacing: 3,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[800],
                  ),
                ),
                SizedBox(
                  height: 25.0,
                  width: 300.0,
                  child: Divider(
                    color: Colors.blueGrey[700],
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  elevation: 20.0,
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 25,
                      color: Colors.teal.shade900,
                    ),
                    title: Text(
                      "+91-12345 67890",
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontSize: 25.0,
                          fontFamily: 'Source Sans Pro'),
                    ),
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  elevation: 20.0,
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 25,
                      color: Colors.teal.shade900,
                    ),
                    title: Text(
                      "gauransh@email.com",
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontSize: 25.0,
                          fontFamily: 'Source Sans Pro'),
                    ),
                  ),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
