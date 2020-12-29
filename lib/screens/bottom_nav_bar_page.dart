import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBarPage extends StatefulWidget {
  @override
  _BottomNavBarPageState createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int _currentPosition = 2;
  List bottomNavList = [
    Center(child: Text("Home")),
    Center(child: Text("Store")),
    Center(child: Text("Camera")),
    Center(child: Text("Wallet")),
    Center(child: Text("History")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bottom Navigation Bar"),
        ),
        body: Container(child: bottomNavList[_currentPosition]),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            currentIndex: _currentPosition,
            onTap: (index) {
              setState(() {
                _currentPosition = index;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.store), label: "Store"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.camera), label: "Camera"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance_wallet), label: "Wallet"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.history), label: "History")
            ]));
  }
}
