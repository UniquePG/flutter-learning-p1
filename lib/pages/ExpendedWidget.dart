import 'package:flutter/material.dart';

class ExpendedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Expended Widget")),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: 60,
              height: 100,
              color: Colors.red,
            ),
          ),
          Container(
            width: 60,
            height: 100,
            color: Colors.amberAccent,
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: 60,
              height: 100,
              color: Colors.green,
            ),
          ),
          Container(
            width: 60,
            height: 100,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
