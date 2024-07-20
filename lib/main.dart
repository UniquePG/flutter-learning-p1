import 'package:flutter/material.dart';
import 'package:learning_project/pages/Card.dart';
import 'package:learning_project/pages/Circle_avatar.dart';
import 'package:learning_project/pages/ContainerDeco.dart';
import 'package:learning_project/pages/ExpendedWidget.dart';
import 'package:learning_project/pages/List_Tile.dart';
import 'package:learning_project/pages/Style_Theme.dart';
import 'package:learning_project/pages/Text_field.dart';
import 'package:learning_project/pages/fifth_screen.dart';
import 'package:learning_project/pages/fourth_screen.dart';
import 'package:learning_project/pages/second_screen.dart';
import 'package:learning_project/pages/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Flutter App",

      // manage theme
      theme: ThemeData(
          primarySwatch: Colors.amber,
          textTheme: const TextTheme(
              displayMedium: TextStyle(fontSize: 30, color: Colors.blueAccent),
              displayLarge: TextStyle(
                  fontSize: 35, color: Colors.green, fontFamily: 'font2'))),

      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(title: const Text('Flutter Demo')),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondScreen()),
                    );
                  },
                  child: const Text("Rows and columns"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to another screen
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => third_screen()));
                  },
                  child: const Text("InkWell widget"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to another screen
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => fourth_screen()));
                  },
                  child: const Text("scroll view"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to another screen
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => listView()));
                  },
                  child: const Text(
                    "List view",
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    // Navigate to another screen
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContainerDeco()));
                  },
                  child: const Text("Container Decoration"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to another screen
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExpendedWidget()));
                  },
                  child: const Text("Expended widget"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to another screen
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => List_Tile()));
                  },
                  child: const Text("List tile"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to another screen
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Circle_avatar()));
                  },
                  child: const Text("Circle avatar"),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Style_Theme()));
                    },
                    child: const Text("Style and theme")),

                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Card_Widget()));
                    },
                    child: const Text("Card Widget")),

                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Text_field()));
                    },
                    child: const Text("Text field"))
                // Add more buttons for additional screens as needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
