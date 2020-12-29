import 'package:flutter/material.dart';

class StateFullWidgetPage extends StatefulWidget {
  @override
  _StateFullWidgetPageState createState() => _StateFullWidgetPageState();
}

class _StateFullWidgetPageState extends State<StateFullWidgetPage> {
  bool liked = false;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            liked = !liked;
            count++;
          });
        },
        child: Center(
            child: Column(children: <Widget>[
          SizedBox(height: 220),
          Text(
            "I am state full widget",
            style: TextStyle(fontSize: 30),
          ),
          Icon(Icons.favorite,
              color: liked ? Colors.red : Colors.grey, size: 40),
          Text(
            "$count likes",
            style: TextStyle(fontSize: 22),
          )
        ])));
  }
}

class SampleWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("State Full Widget Demo"),
            backgroundColor: Colors.purple),
        body: Container(
          child: StateFullWidgetPage(),
        ));
  }
}
