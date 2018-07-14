import 'dart:async';

import 'package:flutter/material.dart';
import 'package:omnyama/pages/customers_page.dart';
import 'package:omnyama/pages/notifications_page.dart';
import 'package:omnyama/pages/public_page.dart';
import 'package:omnyama/pages/transaction_page.dart';
import 'dart:io';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 4, initialIndex: 0);
  }

  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: new Text("Are you sure you want to exit app?"),
              actions: <Widget>[
                new FlatButton(
                  child: new Text("No"),
                  onPressed: () => Navigator.pop(context, false),
                ),
                new FlatButton(
                  child: new Text("Yes"),
                  onPressed: () => Navigator.pop(context, true),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: new AppBar(
          title: Container(
            child: new Row(
              children: <Widget>[
                new Icon(Icons.fingerprint),
                new Text("mnyama")
              ],
            ),
          ),
          actions: <Widget>[
            new Icon(Icons.search),
            new Padding(padding: const EdgeInsets.all(5.0)),
          ],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new Container(
                color: Colors.black,
                child: new DrawerHeader(
                    child: new CircleAvatar(
                        backgroundColor: Colors.white,
                        child: new Icon(Icons.fingerprint,
                            size: 90.0, color: Colors.black))),
              ),
              new ListTile(
                title: new Text("Account"),
                leading: new Icon(Icons.vpn_key),
                onTap: () => print("Invite friends"),
              ),
              new ListTile(
                title: new Text("Notifications"),
                leading: new Icon(Icons.notifications),
                onTap: () => print("Invite friends"),
              ),
              new ListTile(
                title: new Text("Invite a friend"),
                leading: new Icon(Icons.card_giftcard),
                onTap: () => print("Invite friends"),
              ),
              new ListTile(
                title: new Text("FAQ"),
                leading: new Icon(Icons.question_answer),
                onTap: () => print("Invite friends"),
              ),
              new ListTile(
                title: new Text("Contact Omnyama"),
                leading: new Icon(Icons.mail),
                onTap: () => print("Invite friends"),
              ),
              new ListTile(
                title: new Text("App info"),
                leading: new Icon(Icons.info),
                onTap: () => print("Invite friends"),
              ),
              new Divider(),
              new ListTile(
                title: new Text("Exit app"),
                leading: new Icon(Icons.exit_to_app),
                onTap: () => exit(0),
              ),
            ],
          ),
        ),
        body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            new PublicPage(),
            new TransactionPage(),
            new CustomerPage(),
            new NotificationPage(),
          ],
        ),
        bottomNavigationBar: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.green,
          indicatorWeight: 2.5,
          
          labelColor: Colors.black,
          tabs: <Widget>[
            new Tab(child: new Icon(Icons.public)),
            new Tab(icon: new Icon(Icons.monetization_on)),
            new Tab(icon: new Icon(Icons.chat)),
            new Tab(icon: new Icon(Icons.notifications_active))
          ],
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: _makeRequestion,
          child: new Icon(Icons.add),
          notchMargin: 4.0,
          backgroundColor: Colors.green,
        ),
      ),
    );
  }

  void _makeRequestion() {
    print("Request button pressed not now");
  }
}
