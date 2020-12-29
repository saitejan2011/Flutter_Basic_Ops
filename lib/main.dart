import 'package:flutter/material.dart';
import 'package:helloworld/screens/my_drawer_page.dart';

//widgetsApp
//MaterialApp
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My App",
        color: Colors.red,
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(primarySwatch: Colors.red, brightness: Brightness.light),
        home: new MyDrawerPage());
  }
}
