import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../costant.dart';

class FlutterDartOneVideo extends StatelessWidget {
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
              customButton("Paid Course by pawan kumar",
                  "https://www.youtube.com/watch?v=Ib2FlirtcmE&t=1842s"),
              SizedBox(height: 5.0),
              customButton("Paid Course by mtechviral",
                  "https://www.youtube.com/watch?v=6wQwnTIBD1Y"),
              SizedBox(height: 5.0),
              customButton("Dart Programming tutorial",
                  "https://www.youtube.com/watch?v=yIQ-NsFz2sA"),
              SizedBox(height: 5.0),
              customButton("Flutter Crash Course for Beginners",
                  "https://www.youtube.com/watch?v=x0uinJvhNxI"),
              SizedBox(height: 5.0),
              customButton("Tutorial for Beginners (iOS and Android)",
                  "https://www.youtube.com/watch?v=pTJJsmejUOQ&t=2115s"),
              SizedBox(height: 5.0),
              customButton("iOS and Android Apps with Flutter & Dart",
                  "https://www.youtube.com/watch?v=GLSG_Wh_YWc"),
              SizedBox(height: 5.0),
              customButton("Dart Programming Tutorial - Full Course",
                  "https://www.youtube.com/watch?v=Ej_Pcr4uC2Q&t=675s"),
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
                color: Colors.yellow[300],
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
