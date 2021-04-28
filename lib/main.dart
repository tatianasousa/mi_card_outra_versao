import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrange[100],
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/foto.jpg'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 50, width: 50,
                    color: Colors.deepOrange[400],
                    child: Text(
                      "FLUTTER DEVELOPER",
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 20,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  buildCard('+55 86 99999 9999', Icons.phone),
                  buildCard('tatianamariassousa@ gmail.com', Icons.email),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(String text, IconData icon){
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading:Icon(
          icon,
          color: Colors.blueGrey[300],
        ),
        title: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
