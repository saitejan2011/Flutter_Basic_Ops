import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Container, Margin, Padding Widget Screen")),
        body: Container(
          alignment: Alignment.center,
          color: Colors.green,
          height: 200,
          width: 200,
          child: Text(
            "Booring",
            style: TextStyle(backgroundColor: Colors.white, fontSize: 30),
          ),
          margin: EdgeInsets.fromLTRB(40, 40, 40, 40),
          padding: EdgeInsets.all(40),
        ));
  }
}
