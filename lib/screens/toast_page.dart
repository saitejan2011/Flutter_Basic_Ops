import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Toast Page")),
        body: RaisedButton(
          child: Text("Get Toast"),
          onPressed: () {
            Fluttertoast.showToast(msg: "I am toast message in flutter");
          },
        ));
  }
}
