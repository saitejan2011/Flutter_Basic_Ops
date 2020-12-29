import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagesWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Image Widgets Demo"), backgroundColor: Colors.purple),
        body: Image.asset("images/2Y7A8752.JPG",
            width: MediaQuery.of(context).size.width * 3, height: 200));
  }
}
