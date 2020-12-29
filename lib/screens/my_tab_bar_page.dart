import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/screens/list_view_page.dart';

class MyTabBarPage extends StatefulWidget {
  @override
  _MyTabBarPageState createState() => _MyTabBarPageState();
}

class _MyTabBarPageState extends State<MyTabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar Screen"),
          backgroundColor: Colors.orange,
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.home), text: "Home"),
            Tab(
              icon: Icon(Icons.video_collection),
              text: "Videos",
            ),
            Tab(
              icon: Icon(Icons.book),
              text: "Books",
            ),
          ]),
        ),
        body: TabBarView(
          children: [ListViewPage(), Text("2"), Text("3")],
        ),
      ),
    );
  }
}
