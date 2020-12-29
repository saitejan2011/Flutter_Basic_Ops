import 'package:flutter/material.dart';
import 'package:helloworld/screens/navigation_screen_two.dart';

class NavigationScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("First Screen...!"), backgroundColor: Colors.lime),
      body: Container(
        alignment: Alignment.center,
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NavigationScreenTwo("Hey")));
          },
          child: Text("Go to First Screen"),
        ),
      ),
    );
  }
}
