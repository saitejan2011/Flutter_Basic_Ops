import 'package:flutter/material.dart';

class NavigationScreenTwo extends StatelessWidget {
  String text;

  NavigationScreenTwo(this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Second Screen...!"), backgroundColor: Colors.purple),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text("Message from first screen${text}"),
            SizedBox(height: 50),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go to Second Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
