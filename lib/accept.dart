import 'package:flutter/material.dart';
import 'main.dart';

class accept extends StatefulWidget {
  accept({Key key, this.title}) : super(key: key);

  final String title;
  @override
  State createState() => new acceptState();
}

class acceptState extends State<accept> {
  bool found = false;

  setFound(bool found) {
    this.found = found;
  }

  bool getFound() {
    return this.found;
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(
          seconds: 5,
        ), () {
      setFound(true);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
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
                          borderRadius: BorderRadius.circular(300),
                          boxShadow: [
                            BoxShadow(
                                color: ShadowColors.RedShadow,
                                blurRadius: 6,
                                offset: Offset(0, 4))
                          ]),
                      child: Padding(
                          padding: EdgeInsets.all(3),
                          child: Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/Avatar.png',
                                    ),
                                    fit: BoxFit.cover),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(300)),
                          ))),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Partner found!',
                    style: TextStyle(
                        color: ThemeColors.DarkGrey,
                        fontFamily: 'Raleway',
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Miguel Ruiz 🇪🇸',
                    style: TextStyle(
                        color: ThemeColors.DarkGrey,
                        fontFamily: 'Raleway',
                        fontSize: 32),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    width: 160,
                    height: 44,
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
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "Accept",
                            style: new TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 160,
                    height: 44,
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
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          onPressed: () {
                            Navigator.of(context).pop();
                            setFound(false);
                          },
                          child: Text(
                            "Decline",
                            style: new TextStyle(
                                color: ThemeColors.mainRed,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          )),
                    ),
                  ),
                ],
              )
            ],
          )),
        ],
      ),
    );
  }
}
/*Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
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
                                borderRadius: BorderRadius.circular(300),
                                boxShadow: [
                                  BoxShadow(
                                      color: ShadowColors.RedShadow,
                                      blurRadius: 6,
                                      offset: Offset(0, 4))
                                ]),
                            child: Padding(
                                padding: EdgeInsets.all(3),
                                child: Container(
                                  height: 160,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'assets/Avatar.png',
                                          ),
                                          fit: BoxFit.cover),
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(300)),
                                ))),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Partner found!',
                          style: TextStyle(
                              color: ThemeColors.DarkGrey,
                              fontFamily: 'Raleway',
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Miguel Ruiz 🇪🇸',
                          style: TextStyle(
                              color: ThemeColors.DarkGrey,
                              fontFamily: 'Raleway',
                              fontSize: 32),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Container(
                          width: 160,
                          height: 44,
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
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  "Accept",
                                  style: new TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 160,
                          height: 44,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: ThemeColors.mainRed, width: 2),
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: FlatButton(
                                splashColor: Color(0x75FFDDDD),
                                highlightColor: Colors.transparent,
                                clipBehavior: Clip.hardEdge,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  setFound(false);
                                },
                                child: Text(
                                  "Decline",
                                  style: new TextStyle(
                                      color: ThemeColors.mainRed,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                )),
                          ),
                        ),
                      ],
                    )*/
