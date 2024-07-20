import 'package:flutter/material.dart';

class third_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("InkWell widget"),
        ),
        body: Center(
// inkwell widget-> it used when we want to perform any action on the tap, doubleTap, longPress of any widget
          child: InkWell(
            onTap: () {
              print("on tap");
            },
            onDoubleTap: () {
              print("on double tap");
            },
            onLongPress: () {
              print("on long press");
            },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.amber,
              child: Center(
                  child: InkWell(
                onTap: () {
                  print("on tapped on text");
                },
                child: const Text(
                  "text on container",
                  style: TextStyle(fontSize: 21),
                ),
              )),
            ),
          ),
        ));
  }
}
