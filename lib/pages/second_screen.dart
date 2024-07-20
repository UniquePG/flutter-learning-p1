import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => secondScreenState();
}

class secondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Second Screen"),
        ),
        body: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // we can also define that what type of widget we want to add in the columns array  children: <widget> [ .... ]
                children: [
                  Text(
                    "row1 col1",
                    style: TextStyle(fontSize: 21),
                  ),
                  Text(
                    "row1 col2",
                    style: TextStyle(fontSize: 21),
                  ),
                  Text(
                    "row1 col3",
                    style: TextStyle(fontSize: 21),
                  ),
                  Text(
                    "row1 col4",
                    style: TextStyle(fontSize: 21),
                  ),
                  Text(
                    "row1 col5",
                    style: TextStyle(fontSize: 21),
                  ),
                ],
              ),
              // veticle line
              const VerticalDivider(),
              Container(
                height: 330,
                width: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text("row2 col1"),
                    const Text("row2 col1"),
                    const Text("row2 col2"),
                    const Text("row2 col3"),
                    const Text("row2 col4"),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("click here")),
                  ],
                ),
              ),
              const VerticalDivider(),
              ElevatedButton(
                  onPressed: () {}, child: const Text("click button"))
            ],
          ),
        ));
  }
}
