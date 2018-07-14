import 'package:flutter/material.dart';
import 'package:omnyama/pages/splash_screen.dart';

void main() => runApp(OmnyamaApp());

class OmnyamaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primaryColor: Color(0xFF000000),
        accentColor: Color(0xFF000000)
      ),
      home: new SplashScreen(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}