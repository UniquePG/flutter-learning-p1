import 'package:flutter/material.dart';


class listView extends StatelessWidget {
  listView({super.key});

  var names = ["ram", "lakshman", "bharat", "james"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("ListView"),
      ),

//! listview builder
      // body: ListView.builder(
      //   itemBuilder: (context, index) {
      //     return Text(
      //       names[index],
      //       style: TextStyle(fontSize: 20),
      //     );
      //   },

      //   itemCount: names.length, // how many times our design will repeat
      //   itemExtent: 50, // we can extend our list items(gap between items)
      //   // scrollDirection: Axis.horizontal, // define direction of listview
      // )

//! listview saperated-> when we want anywidget between list items
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    names[index],
                    style: const TextStyle(fontSize: 25),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    names[index],
                    style: const TextStyle(fontSize: 22),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    names[index],
                    style: const TextStyle(fontSize: 27),
                  ),
                ),
              ],
            );
          },

          //* with which thing we want to saperate list items
          separatorBuilder: (context, index) {
            return const Divider(
              height: 10, // we can give gap with this divider height
              thickness: 3, // thickness of the divider
            );
          },
          itemCount: names.length),

//! Basic of list view
      // body: ListView(
      //   // we can also define the direction of our list
      //   scrollDirection: Axis.horizontal,

      //   // reverse our list
      //   reverse: true,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(
      //         "one",
      //         style: TextStyle(fontSize: 20),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(
      //         "two",
      //         style: TextStyle(fontSize: 20),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(
      //         "three",
      //         style: TextStyle(fontSize: 20),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(
      //         "four",
      //         style: TextStyle(fontSize: 20),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
