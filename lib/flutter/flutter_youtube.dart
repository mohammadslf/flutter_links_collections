import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../costant.dart';

class FlutterYoutube extends StatelessWidget {
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
              customButton("Introduction of flutter widgets by Flutter",
                  "https://www.youtube.com/watch?v=b_sQ9bMltGU&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG"),
              SizedBox(height: 5.0),
              customButton("Flutter tutorial for beginnrs by smartherd",
                  "https://www.youtube.com/watch?v=fmPmrJGbb6w&list=PLlxmoA0rQ-Lw6tAs2fGFuXGP13-dWdKsB"),
              SizedBox(height: 5.0),
              customButton("Dart for beginners by smartherd",
                  "https://www.youtube.com/watch?v=5rtujDjt50I&list=PLlxmoA0rQ-LyHW9voBdNo4gEEIh0SjG-q"),
              SizedBox(height: 5.0),
              customButton("customized code by pakacademy79",
                  "https://www.youtube.com/watch?v=dfOu_9ggYRc&list=PLGJPpb8f27YY-gBqVlUbWNz3Eo5IplFlT"),
              SizedBox(height: 5.0),
              customButton("dart for beginners by pakacademy79",
                  "https://www.youtube.com/watch?v=u-shK61mV54&list=PLGJPpb8f27YY8Rr4o0tl4k240D5AwiMoa"),
              SizedBox(height: 5.0),
              customButton("flutter Career path by mtechviral",
                  "https://www.youtube.com/watch?v=Nl2kmAbC0bg&list=PLR2qQy0Zxs_WAho9MWS1e36xF9PKLdM5w"),
              SizedBox(height: 5.0),
              customButton("Speed Code by the flutter way",
                  "https://www.youtube.com/watch?v=Nhy0VWAMsFU&list=PLxUBb2A_UUy-b9BA5etZ4oMt_77R3EUYW"),
              SizedBox(height: 5.0),
              customButton("Flutter for mid level by Code with Andrea",
                  "https://www.youtube.com/c/CodeWithAndrea/playlists"),
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
                color: Colors.cyanAccent,
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
