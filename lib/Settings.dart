import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'main.dart';
import 'package:flutter_range_slider/flutter_range_slider.dart' as frs;

class Settings extends StatefulWidget {
  @override
  State createState() => new SettingsState();
}

// TODO: add descriptions and texts as variables

class SettingsState extends State<Settings> {
  double RatingA = 20;
  double RatingB = 28;
  setRatingA(double RatingA) {
    this.RatingA = RatingA;
  }

  double getRatingA() {
    return this.RatingA;
  }

  setRatingB(double RatingA) {
    this.RatingA = RatingA;
  }

  double getRatingB() {
    return this.RatingA;
  }

  String _email, _pass, _nom, _prenom, _numtel;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: Stack(
      children: <Widget>[
        Image.asset('assets/wallpaper.png', height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,),
        CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              backgroundColor: Color(0xFFFAFAFA),
              expandedHeight: 80,
              elevation: 2,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: ThemeColors.LightGrey,
                  size: 24,
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/HomePage');
                },
              ),
              title: Text(
                "Settings",
                style: Theme.of(context).textTheme.title,
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 24),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text("Desired location",
                                    style: Theme.of(context).textTheme.subhead),
                                Expanded(child: SizedBox()),
                                Text(
                                  'Eastern europe',
                                  style: TextStyle(color: ThemeColors.DarkGrey),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  /// here i implemented the Rayon settings components

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 24),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text("Age",
                                    style: Theme.of(context).textTheme.subhead),
                                Expanded(child: SizedBox()),
                                Text(
                                  'from ${getRatingA().toInt()} to ${getRatingB().toInt()} years old',
                                  style: TextStyle(color: ThemeColors.DarkGrey),
                                )
                              ],
                            ),
                            SizedBox(height: 8),
                            frs.RangeSlider(
                              min: 5,
                              max: 80,
                              showValueIndicator: true,
                              onChanged: (double RatingB, double RatingA) {
                                setState(() => setRatingA(RatingA));
                                setState(() => setRatingB(RatingB));
                              },
                              lowerValue: getRatingA(),
                              upperValue: getRatingB(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                    child: Text(
                        'Modifier le rayon de la recherche pour lorum ipsum cardi le dinspiration réglages du profil',
                        style: Theme.of(context).textTheme.body2),
                  ),

                  /// here i implemented the Profile settings components

                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Text(
                      "Topics",
                      style: Theme.of(context).textTheme.headline,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),

                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Card(
                        elevation: 2,
                        margin: EdgeInsets.all(0),
                        child: FlatButton(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 8),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "Social media",
                                    style: TextStyle(
                                      color: ThemeColors.DarkGrey,
                                    ),
                                  ),
                                  Expanded(child: SizedBox()),
                                ],
                              ),
                            ),
                            onPressed: () {}),
                      )),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Card(
                        elevation: 2,
                        margin: EdgeInsets.all(0),
                        child: FlatButton(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 8),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "Machine learning",
                                    style:
                                        TextStyle(color: ThemeColors.DarkGrey),
                                  ),
                                  Expanded(child: SizedBox()),
                                ],
                              ),
                            ),
                            onPressed: () {}),
                      )),
                  
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
