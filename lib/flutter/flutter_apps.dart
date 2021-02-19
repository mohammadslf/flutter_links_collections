import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../costant.dart';

class FlutterApps extends StatelessWidget {
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
              customButton("Flutter awesome gallery",
                  "https://play.google.com/store/apps/details?id=flutter.awesome.gallery"),
              SizedBox(height: 5.0),
              customButton("Flutter tutorials and quizzes",
                  "https://play.google.com/store/apps/details?id=edapps.com.flutter_tutorials_and_quizzes"),
              SizedBox(height: 5.0),
              customButton("Flutter Galary",
                  "https://play.google.com/store/apps/details?id=io.flutter.demo.gallery"),
              SizedBox(height: 5.0),
              customButton("Flutter tutorials",
                  "https://play.google.com/store/apps/details?id=com.sts.flutter"),
              SizedBox(height: 5.0),
              customButton("Flutter catelog with source code",
                  "https://play.google.com/store/apps/details?id=io.github.x_wei.flutter_catalog"),
              SizedBox(height: 5.0),
              customButton("flutter easy",
                  "https://play.google.com/store/apps/details?id=com.flutter.google"),
              SizedBox(height: 5.0),
              customButton("flutter Challenges",
                  "https://play.google.com/store/apps/details?id=com.popupbits.flutteruichallenges"),
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
                color: Colors.pinkAccent,
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
