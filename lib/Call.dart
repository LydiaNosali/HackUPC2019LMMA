import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'main.dart';

class Call extends StatefulWidget {
  Call({Key key, this.title}) : super(key: key);

  final String title;
  @override
  State createState() => new CallState();
}

class CallState extends State<Call> {
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
          seconds: 2,
        ), () {
      Navigator.of(context).pushNamed('/accept');
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
              Container(
                  height: 280,
                  child: FlareActor("assets/Call.flr",
                      alignment: Alignment.center,
                      fit: BoxFit.contain,
                      animation: "record")),
              Text(
                'Looking for a partner',
                style: TextStyle(
                    color: ThemeColors.DarkGrey,
                    fontFamily: 'Raleway',
                    fontSize: 18),
              ),
              SizedBox(height: 16),
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
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: () {
                        Navigator.of(context).pop();
                        setFound(false);
                      },
                      child: Text(
                        "Cancel",
                        style: new TextStyle(
                            color: ThemeColors.mainRed,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      )),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}