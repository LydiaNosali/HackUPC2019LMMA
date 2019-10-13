import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Call.dart';
import 'accept.dart';
import 'Settings.dart';
import 'Slides.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primaryColor: Color(0xFFF05159),
          textTheme: Theme.of(context).textTheme.copyWith(
                title: new TextStyle(
                    color: ThemeColors.DarkGrey,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
                body1: new TextStyle(
                    color: ThemeColors.LightGrey,
                    fontFamily: 'Raleway',
                    fontSize: 14),
                body2: new TextStyle(
                    color: ThemeColors.LightGrey,
                    fontFamily: 'Montserrat',
                    fontSize: 11),
                headline: new TextStyle(
                    color: Colors.black, fontFamily: 'Raleway', fontSize: 18),
                //
                subhead: new TextStyle(
                    color: ThemeColors.mainRed,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 16),

                /// i used this in Fieled Texts in TextFields
                display1: new TextStyle(
                    color: Colors.black87, fontFamily: 'Raleway', fontSize: 18),

                /// i used this in hintTexts in TextFields
                display2: new TextStyle(
                    color: ThemeColors.LightGrey,
                    fontFamily: 'Raleway',
                    fontSize: 18),
              ),
        ),
        home: SplashScreen(),
        routes: <String, WidgetBuilder>{
          "/WelcomeScreen": (BuildContext context) => new WelcomeScreen(),
          "/HomePage": (BuildContext context) => new HomePage(),
          "/Call": (BuildContext context) => new Call(),
          "/accept": (BuildContext context) => new accept(),
          "/settings": (BuildContext context) => new Settings(),
          "/slides": (BuildContext context) => new Slides(),
        },
        debugShowCheckedModeBanner: false);
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State createState() {
    return new SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      Navigator.of(context).pushReplacementNamed('/WelcomeScreen');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: GestureDetector(
            onDoubleTap: () {
              Navigator.of(context).pushReplacementNamed('/WelcomeScreen');
            },
            child: Center(
                child: RaisedButton(
              child: Text('Continue'),
              onPressed: () {},
            ))));
  }
}

class WelcomeScreen extends StatefulWidget {
  @override
  State createState() {
    return new WelcomeScreenState();
  }
}

class WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: Stack(
      children: <Widget>[
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/logoColor.png',
                  width: 140,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '''Welcome to MindBind''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ThemeColors.DarkGrey,
                      fontFamily: 'Montserrat',
                      fontSize: 28),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  // TODO: add description
                  '''Gender, Race and Background diverse minds perform better!''',
                  style: TextStyle(
                      color: ThemeColors.LightGrey,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 64,
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width - 64,
                height: 52,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: ThemeColors.mainRed,
                    boxShadow: [
                      BoxShadow(
                          color: ShadowColors.RedShadow,
                          blurRadius: 6,
                          offset: Offset(0, 4))
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: FlatButton(
                      splashColor: Color(0x25FFDDDD),
                      highlightColor: Colors.transparent,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: () {
                        Navigator.of(context).pushNamed('/HomePage');
                      },
                      child: Text(
                        "SIGN IN",
                        style: new TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      )),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 64,
                height: 52,
                decoration: BoxDecoration(
                  border: Border.all(color: ThemeColors.mainRed, width: 2),
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: FlatButton(
                      splashColor: Color(0x75FFDDDD),
                      highlightColor: Colors.transparent,
                      clipBehavior: Clip.hardEdge,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: () {
                        Navigator.of(context).pushNamed("/slides");
                      },
                      child: Text(
                        "SIGN UP",
                        style: new TextStyle(
                            color: ThemeColors.mainRed,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      )),
                ),
              ),
              SizedBox(
                height: 32,
              ),
            ],
          ),
        )
      ],
    ));
  }
}

// Colors
class ThemeColors {
  static const Color mainRed = Color(0xFFF05159);

  static const Color TiryadicBlue = Color(0xFF6AC9D2);
  static const Color TiryadicLightBlue = Color(0xFFCDEDF0);

  static const Color TiryadicYellow = Color(0xFFECDD75);
  static const Color TiryadicLightYellow = Color(0xFFF9F4D1);

  static const Color LightGrey = Color(0xFFB0BEC5);
  static const Color DarkGrey = Color(0xFF546E7A);

  static const Color Orange = Color(0xFFF16358);
  static const Color Magenta = Color(0xFFF05176);
}

class ShadowColors {
  static const Color VeryLightShadow = Color.fromARGB(10, 0, 0, 0);
  static const Color LightShadow = Color.fromARGB(30, 0, 0, 0);
  static const Color MediumShadow = Color.fromARGB(60, 0, 0, 0);
  static const Color RegularShadow = Color.fromARGB(130, 0, 0, 0);

  static const Color lightRedShadow = Color(0x33F05159);
  static const Color RedShadow = Color(0x77F05159);
  static const Color BlueShadow = Color(0x776AC9D2);
  static const Color YellowShadow = Color(0x77ECDD75);
}
