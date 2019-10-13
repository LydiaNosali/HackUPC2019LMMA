import 'package:flutter/material.dart';
import 'main.dart';

class Slides extends StatefulWidget {
  Slides({Key key, this.title}) : super(key: key);
  final String title;
  @override
  State createState() => new SlidesState();
}

class SlidesState extends State<Slides> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: PageView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  height: 280,
                  child: Image.asset('assets/wallpaper.png')),
              SizedBox(
                height: 20,
                width: 0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  '''Tie up with people from all around the globe''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ThemeColors.DarkGrey,
                      fontFamily: 'Raleway',
                      fontSize: 24),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  height: 280,
                  child: Image.asset('assets/wallpaper.png')),
              SizedBox(
                height: 20,
                width: 0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  '''Find your mind twin or just discover new mindsets''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ThemeColors.DarkGrey,
                      fontFamily: 'Raleway',
                      fontSize: 24),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  height: 280,
                  child: Image.asset('assets/wallpaper.png')),
              SizedBox(
                height: 20,
                width: 0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  '''Start sharpening your knowledge and share it with new friends!''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ThemeColors.DarkGrey,
                      fontFamily: 'Raleway',
                      fontSize: 24),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
