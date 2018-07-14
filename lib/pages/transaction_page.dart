import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Text("Transactions screen",
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0)),
    );
  }
}
