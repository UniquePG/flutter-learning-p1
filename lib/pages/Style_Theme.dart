import 'package:flutter/material.dart';
import 'package:learning_project/ui_element/theme1.dart';

class Style_Theme extends StatelessWidget {
  const Style_Theme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Style and Theme')),
      body: Container(
        child: Column(
          children: [
            // here i implement globaly define them (define in materialApp widget ThemeData)
            Text("This is text",
                style: Theme.of(context).textTheme.displayMedium),

            Text(
              "this is another text",
              style: Theme.of(context).textTheme.displayLarge,
            ),

            // implement theme that define in another dart file(just call our theme fun. with name)
            Text(
              "This is the text that implements custom dart file style",
              style: mmText20(),
            ),

            // lets use the custom parameters that we defile in the function
            Text(
              "This is the text that implements custom dart file style with parameters",
              style:
                  mmText20(textColor: Colors.lime, fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }
}
