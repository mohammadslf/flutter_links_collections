import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../costant.dart';

class FlutterWebsites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawerEnableOpenDragGesture: false,
        appBar: AppBar(
          title: Text('Flutter'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              customButton("Flutter Official website", "https://flutter.dev/"),
              SizedBox(height: 5.0),
              customButton("Flutter installation",
                  "https://flutter.dev/docs/get-started/install"),
              SizedBox(height: 5.0),
              customButton("Flutter Documentation", "https://flutter.dev/docs"),
              SizedBox(height: 5.0),
              customButton("Flutter by Javatpoint",
                  "https://www.javatpoint.com/flutter"),
              SizedBox(height: 5.0),
              customButton("Flutter Codes topicwise",
                  "https://kodestat.gitbook.io/flutter/"),
              SizedBox(height: 5.0),
              customButton("flutter projects collection",
                  "https://github.com/FilledStacks/flutter-tutorials"),
              SizedBox(height: 5.0),
              customButton("How to learn flutter",
                  "https://www.freecodecamp.org/news/how-to-learn-flutter-in-2020/"),
              SizedBox(height: 5.0),
            ],
          ),
        ),
      ),
    );
  }

  Expanded customButton(String name, String url) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
        child: GestureDetector(
          onTap: () {
            launch(url);
          },
          child: Container(
            alignment: Alignment.center,
            //height: 30.0,
            decoration: BoxDecoration(
                //color: Color(0xFF18D191),
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10.0)),
            child: Text(
              name,
              style: ktopics,
            ),
          ),
        ),
      ),
    );
  }
}
