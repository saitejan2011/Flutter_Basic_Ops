import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyFieldScreen extends StatelessWidget {
  TextEditingController editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("First Screen")),
        body: Container(
            margin: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: editingController,
                  decoration: InputDecoration(
                      hintText: "Enter Email",
                      suffixIcon: Icon(Icons.mail),
                      border: OutlineInputBorder()),
                ),
                RaisedButton(
                  onPressed: () {
                    print(editingController.text);
                  },
                  child: Text("Get Data"),
                )
              ],
            )));
  }
}
