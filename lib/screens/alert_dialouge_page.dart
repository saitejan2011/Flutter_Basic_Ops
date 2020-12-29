import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialougePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Alert diolouge screen",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.yellow),
      body: Container(
        child: RaisedButton(
          onPressed: () {
            createAlertDialog(context);
          },
          child: Text("Show Alert Dialog"),
        ),
      ),
    );
  }

  createAlertDialog(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Congratulations...!"),
      content: Text("You have won One Plus - 7"),
      elevation: 10.0,
      backgroundColor: Colors.yellowAccent,
      actions: <Widget>[
        GestureDetector(
          child: Text("Close"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Close"))
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
