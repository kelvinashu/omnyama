import 'package:flutter/material.dart';

class CustomerPage extends StatefulWidget {
  @override
  _CustomerPageState createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Text("Conversation screen",
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0)),
    );
  }
}
