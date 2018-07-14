import 'package:flutter/material.dart';
import 'package:omnyama/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  void _login(){
    print("login button pressed");
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("images/cows.jpg"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Icon(
                    Icons.fingerprint,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  new Text(
                    "mnyama",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  )
                ],
              ),
              new Form(
                child: Theme(
                  data: new ThemeData(
                      brightness: Brightness.dark,
                      inputDecorationTheme: new InputDecorationTheme(
                          labelStyle: new TextStyle(
                              color: Colors.teal, fontSize: 15.0))),
                  child: new Container(
                    padding: const EdgeInsets.all(25.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new TextFormField(
                          decoration:
                              new InputDecoration(labelText: "Enter email"),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        new TextFormField(
                          decoration:
                              new InputDecoration(labelText: "Enter password"),
                          keyboardType: TextInputType.emailAddress,
                          obscureText: true,
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                        ),
                        new MaterialButton(
                          textColor: Colors.white,
                          color: Colors.teal,
                          child: new Text("Login"),
                          onPressed: () => _login(),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
