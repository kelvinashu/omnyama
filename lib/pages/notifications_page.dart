import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Text("Notifications screen",
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0)),
    );
  }
}
