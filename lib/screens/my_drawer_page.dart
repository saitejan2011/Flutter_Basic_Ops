import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawerPage extends StatefulWidget {
  @override
  _MyDrawerPageState createState() => _MyDrawerPageState();
}

class _MyDrawerPageState extends State<MyDrawerPage> {
  List list = [
    Center(child: Text("Home")),
    Center(child: Text("Sign In")),
    Center(child: Text("Sign Up"))
  ];
  var currentSelectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Drawer Page Demo"), backgroundColor: Colors.blue),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Hey Flutter..!",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue),
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero),
            ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    currentSelectedItem = 0;
                  });
                }),
            ListTile(
                title: Text("Sign In"),
                leading: Icon(Icons.login),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    currentSelectedItem = 1;
                  });
                }),
            ListTile(
                title: Text("Sign Out"),
                leading: Icon(Icons.logout),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    currentSelectedItem = 2;
                  });
                })
          ],
        ),
      ),
      body: list[currentSelectedItem],
    );
  }
}
