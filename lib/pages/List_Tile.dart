import 'package:flutter/material.dart';

class List_Tile extends StatelessWidget {
  var names = ["ram", "lakshman", "bharat", "james"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List tile"),
        ),
        body: ListView.separated(
            itemBuilder: (constext, index) {
// there are three parts of the list tile-> 1. leading, title, subtile, trailing
// there all parts and not mendatory to use them together we can only use any of them according to our condition
              return ListTile(
                leading: Text('${index + 1}'),
                title: Text(names[index]),
                subtitle: const Text("number"),
                trailing: const Icon(Icons.add),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 20,
                thickness: 1,
              );
            },
            itemCount: names.length));
  }
}
