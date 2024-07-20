import 'package:flutter/material.dart';

class Card_Widget extends StatelessWidget {
  const Card_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card"),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              elevation: 10,
              shadowColor: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 80,
                    width: 300,
                    child: const Center(
                      child: Text("This is the text inside the card",
                          style: TextStyle(fontSize: 18)),
                    )),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: Colors.black54,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 80,
                    width: 300,
                    child: const Center(
                      child: Text("This is the text inside the card",
                          style: TextStyle(fontSize: 18)),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
