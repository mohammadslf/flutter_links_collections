import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'flutterDartOneVideo.dart';
import 'flutter_apps.dart';
import 'flutter_websites.dart';
import 'flutter_youtube.dart';
import '../costant.dart';

class FlutterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mohd'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FlutterYoutube()),
                      );
                    },
                    child: FlutterHomePage(
                      imagePath: 'assets/images/you.JPG',
                      label: 'Youtube Channels',
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Divider(
          //   thickness: 5.0,
          //   height: 5.0,
          //   color: Colors.black,
          //   endIndent: 10.0,
          //   indent: 10.0,
          // ),
          // SizedBox(
          //   height: 7.0,
          // ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FlutterWebsites()),
                      );
                    },
                    child: FlutterHomePage(
                      imagePath: 'assets/images/web.JPG',
                      label: 'Websites',
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Divider(
          //   thickness: 5.0,
          //   height: 5.0,
          //   color: Colors.black,
          //   endIndent: 10.0,
          //   indent: 10.0,
          // ),
          // SizedBox(
          //   height: 7.0,
          // ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FlutterDartOneVideo()),
                      );
                    },
                    child: FlutterHomePage(
                      imagePath: 'assets/images/one.JPG',
                      label: 'Flutter and dart in one video',
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Divider(
          //   thickness: 5.0,
          //   height: 5.0,
          //   color: Colors.black,
          //   endIndent: 10.0,
          //   indent: 10.0,
          // ),
          // SizedBox(
          //   height: 7.0,
          // ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FlutterApps()),
                      );
                    },
                    child: FlutterHomePage(
                      imagePath: 'assets/images/apps.JPG',
                      label: 'Apps',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FlutterHomePage extends StatelessWidget {
  const FlutterHomePage({@required this.imagePath, this.label});
  final String imagePath;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Material(
              color: Colors.cyan,
              elevation: 7.0,
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                child: Image(
                  //height: 90.0,

                  //width: 620.0,
                  image: AssetImage(
                    imagePath,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            label,
            style: kLabel,
          ),
          SizedBox(
            height: 7.0,
          ),
          Divider(
            thickness: 5.0,
            height: 5.0,
            color: Colors.black,
            endIndent: 10.0,
            indent: 10.0,
          ),
        ],
      ),
    );
  }
}
