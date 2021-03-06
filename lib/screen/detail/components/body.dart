import 'package:flutter/material.dart';
import 'package:universe_app/constants.dart';
import 'package:universe_app/models/planet_Info.dart';

import 'detail_description.dart';
import 'gallery.dart';

class Body extends StatelessWidget {
  final PlanetInfo planetInfo;
  const Body({Key key, this.planetInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                DetailDescription(planetInfo: planetInfo),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Text(
                    'Gallery',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 25,
                      color: const Color(0xff47455f),
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Gallery(planetInfo: planetInfo),
              ],
            ),
          ),
          //planet images
          Positioned(
            right: -64,
            child: Hero(
                tag: planetInfo.position,
                child: Image.asset(planetInfo.iconImage)),
          ),
          //number images
          Positioned(
            top: 60,
            left: 32,
            child: Text(
              planetInfo.position.toString(),
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 247,
                color: primaryTextColor.withOpacity(0.08),
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          //back icon
          IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
