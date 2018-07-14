import 'package:flutter/material.dart';
import 'dart:async';

import 'package:omnyama/pages/login_page.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _spashElapsed() {
    print("Splash is done");
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage()),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), _spashElapsed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(color: Colors.black),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Expanded(
                flex: 2,
                child: new Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: new Icon(
                          Icons.fingerprint,
                          color: Colors.black,
                          size: 70.0,
                        ),
                      ),
                      new Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      new Text(
                        "Omnyama",
                        style: TextStyle(color: Colors.white, fontSize: 30.0),
                      )
                    ],
                  ),
                ),
              ),
              new Expanded(
                flex: 1,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new CircularProgressIndicator(
                      backgroundColor: Colors.blue,
                    ),
                    new Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    new Text(
                      "The Black Marketplace.",
                      style: TextStyle(color: Colors.white, fontSize: 13.0),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
