import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: Text("Floating Action Button")),
      body: Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Center(
          child: FloatingActionButton(
        backgroundColor: Colors.red,
        tooltip: "Add to bookmark",
        child: Icon(Icons.collections_bookmark),
        onPressed: () {
          print("test");
          var snackbar = SnackBar(
            content: Text("Added to favorite list"),
            backgroundColor: Colors.grey,
            action: SnackBarAction(
                label: "Undo",
                onPressed: () {
                  print("Undo action performed");
                }),
          );
          _scaffoldKey.currentState.showSnackBar(snackbar);
        },
      )),
    );
  }
}
