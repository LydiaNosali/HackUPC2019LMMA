import 'package:flutter/material.dart';
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
              child: SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      /// Settings
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            color: ThemeColors.LightGrey,
                            boxShadow: [
                              BoxShadow(
                                  color: ThemeColors.LightGrey,
                                  blurRadius: 6,
                                  offset: Offset(0, 4))
                            ]),
                        child: Material(
                          color: ThemeColors.LightGrey,
                          elevation: 0,
                          borderRadius: BorderRadius.circular(100),
                          child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Icon(
                                Icons.settings,
                                color: ThemeColors.DarkGrey,
                              )),
                        ),
                      ),

                      Expanded(
                        child: SizedBox(),
                      ),

                      Text('TWINDER', style: TextStyle(fontSize: 20, fontFamily: 'Montserrat', color: ThemeColors.DarkGrey),),

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
              )),
          Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 2 / 3 - 40,
                width: 0,
              ),
              Container(
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
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 50,
                      )),
                ),
              ),
              SizedBox(
                height: 20,
                width: 0,
              ),
              Text('Look for a kindred spirit', style: TextStyle(color: Color(0xFF546E7A), fontFamily: 'Raleway', fontSize: 18),),
              SizedBox(
                height: 8,
                width: 0,
              ),
              Text('from all around the globe!', style: TextStyle(color: Color(0xFFB0BEC5), fontFamily: 'Montserrat', fontSize: 14),),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 68, vertical: 32),
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
          )
        ],
      ),
    );
  }
}
