import 'package:flutter/material.dart';

class fourth_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.yellow, title: const Text("scroll view")),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          // wrap our content with the SingleChildScrollView widget that makes our content scrollable
          // usecase-> if we have different types of content that we want to make scrollable
          child: SingleChildScrollView(
            child: Column(
              children: [
        // horizontal scroll content
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
        // we have to define scrolldirection to make content horizontal scrollable
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 200,
                        width: 200,
                        // width: 200,
                        color: Colors.lightBlue,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 200,
                        width: 200,
                        // width: 200,
                        color: Colors.yellow,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 200,
                        width: 200,
                        // width: 200,
                        color: Colors.red,
                      ),
                    ]),
                  ),
                ),

        // verticle scroll content
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 200,
                  // width: 200,
                  color: Colors.green,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 200,
                  // width: 200,
                  color: Colors.pink,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 200,
                  // width: 200,
                  color: Colors.purple,
                ),
              ],
            ),
          ),
        ));
  }
}
