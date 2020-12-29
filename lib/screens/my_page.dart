import 'package:flutter/material.dart';

class MyFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("First Screen Done"),
        leading: Icon(Icons.home),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.done_all),
                highlightColor: Colors.blue,
                onPressed: () {
                  print("pressed");
                },
              ),
              Icon(Icons.dangerous),
              Icon(Icons.subdirectory_arrow_left),
            ],
          ),
          new IconButton(
            icon: new Icon(Icons.search),
            highlightColor: Colors.blue,
            onPressed: () {
              print("pressed");
            },
          ),
          Icon(Icons.favorite),
          Icon(Icons.people),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.tram_rounded),
        onPressed: null,
      ),
    );
  }
}
