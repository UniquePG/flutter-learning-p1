import 'package:flutter/material.dart';

class ContainerDeco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Decoration"),
      ),
      body: Container(
        // if we give infinity size then child takes full screen size (if we wrap child with anyother widget then it takes their repective size)
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 166, 220, 245),
        child: Center(
          child: Container(
            height: 100,
            width: 100,
            // color: Colors.grey, // we can not provide color and decoration together, we have to give color inside decoration
            decoration: BoxDecoration(
              color: Colors.grey,
              // borderRadius: BorderRadius.circular(10),
              // we have to use Radius with only
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              border: Border.all(
                width: 4,
                color: Colors.redAccent,
              ),
              boxShadow: const [
                BoxShadow(blurRadius: 10, spreadRadius: 7, color: Colors.grey)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
