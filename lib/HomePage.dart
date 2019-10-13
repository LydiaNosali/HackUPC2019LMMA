import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 2),
                      color: Color(0x0A000000),
                      blurRadius: 4)
                ],
              ),
              child: SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      /// Settings
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/settings');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                              color: ThemeColors.LightGrey,
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFFECEFF1),
                                    blurRadius: 6,
                                    offset: Offset(0, 4))
                              ]),
                          child: Material(
                            color: Color(0xFFECEFF1),
                            elevation: 0,
                            borderRadius: BorderRadius.circular(100),
                            child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Icon(
                                  Icons.settings,
                                  color: ThemeColors.LightGrey,
                                )),
                          ),
                        ),
                      ),

                      Expanded(
                        child: SizedBox(),
                      ),

                      Text(
                        'MindBind',
                        style: TextStyle(
                            fontSize: 26,
                            fontFamily: 'Montserrat',
                            color: ThemeColors.DarkGrey),
                      ),

                      Expanded(
                        child: SizedBox(),
                      ),

                      /// Profile pic
                      Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  ThemeColors.Magenta,
                                  ThemeColors.mainRed,
                                  ThemeColors.Orange,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                    color: ShadowColors.RedShadow,
                                    blurRadius: 6,
                                    offset: Offset(0, 4))
                              ]),
                          child: Padding(
                              padding: EdgeInsets.all(3),
                              child: Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          'assets/Avatar.png',
                                        ),
                                        fit: BoxFit.cover),
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(33)),
                              ))),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 2 / 3 - 320,
                width: 0,
              ),
              Container(
                  height: 280,
                  child: FlareActor("assets/Anim.flr",
                      alignment: Alignment.center,
                      fit: BoxFit.contain,
                      animation: "idle")),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/Call');
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Colors.white,
                      boxShadow: [
                        new BoxShadow(
                            color: ShadowColors.RedShadow,
                            blurRadius: 6,
                            offset: Offset(0, 4)),
                      ]),
                  child: Material(
                    color: ThemeColors.mainRed,
                    elevation: 0,
                    borderRadius: BorderRadius.circular(100),
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                            height: 50,
                            width: 50,
                            child: Image.asset('assets/logo.png'))),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                width: 0,
              ),
              Text(
                'Look for a kindred spirit',
                style: TextStyle(
                    color: ThemeColors.DarkGrey,
                    fontFamily: 'Raleway',
                    fontSize: 18),
              ),
              SizedBox(
                height: 4,
                width: 0,
              ),
              Text(
                'from all around the globe!',
                style: TextStyle(
                    color: ThemeColors.DarkGrey,
                    fontFamily: 'Montserrat',
                    fontSize: 14),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 68, vertical: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    /// messagerie button
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          color: Colors.white,
                          boxShadow: [
                            new BoxShadow(
                                color: ShadowColors.BlueShadow,
                                blurRadius: 6,
                                offset: Offset(0, 4)),
                          ]),
                      child: Material(
                        color: Colors.white,
                        elevation: 0,
                        borderRadius: BorderRadius.circular(100),
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Image.asset(
                              'assets/msg.png',
                              height: 26,
                            )),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),

                    ///contacts button
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          color: Colors.white,
                          boxShadow: [
                            new BoxShadow(
                                color: ShadowColors.YellowShadow,
                                blurRadius: 6,
                                offset: Offset(0, 4)),
                          ]),
                      child: GestureDetector(
                        onTap: () {},
                        child: Material(
                          color: Colors.white,
                          elevation: 0,
                          borderRadius: BorderRadius.circular(100),
                          child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Image.asset(
                                'assets/frnds.png',
                                height: 26,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
