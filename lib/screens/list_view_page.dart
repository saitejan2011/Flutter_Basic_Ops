import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("ListView Screen"), backgroundColor: Colors.pink),
      body: Container(child: this.createListView()),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
    );
  }

  List<String> generateListItems() {
    return List.generate(1000, (counter) => "Item ${counter + 1}");
  }

  Widget createListView() {
    List<String> listItems = generateListItems();
    return ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        title: Image.asset("images/2Y7A8752.JPG",
            width: MediaQuery.of(context).size.width * 3, height: 200),
        onTap: () {
          var snackbar = SnackBar(
            content: Text(listItems[index]),
            backgroundColor: Colors.grey,
            action: SnackBarAction(
                label: "Undo",
                onPressed: () {
                  print(index + 1);
                }),
          );
          //_scaffoldKey.currentState.showSnackBar(snackbar);
          Scaffold.of(context).showSnackBar(snackbar);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      new SecondScreenPage(listItems[index])));
        },
      );
    });
  }
}

class SecondScreenPage extends StatelessWidget {
  String title;
  SecondScreenPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title),
    );
  }
}
