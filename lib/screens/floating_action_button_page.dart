import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FloatingActionButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Floating Action Button")),
      body: Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Center(
          child: FloatingActionButton(
        backgroundColor: Colors.red,
        tooltip: "Add to bookmark",
        child: Icon(Icons.collections_bookmark),
        onPressed: () {
          print("Bookmarked");
        },
      )),
    );
  }
}
