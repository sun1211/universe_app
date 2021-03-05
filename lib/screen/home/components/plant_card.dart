import 'package:flutter/material.dart';
import 'package:universe_app/constants.dart';
import 'package:universe_app/models/planet_Info.dart';

class PlanetCard extends StatelessWidget {
  final int index;
  final Function press;
  final PlanetInfo planets;
  const PlanetCard({
    Key key,
    this.index,
    this.planets,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 100),
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 100),
                      Text(
                        planets.name,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 44,
                          color: const Color(0xff47455f),
                          fontWeight: FontWeight.w900,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Solar System',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 23,
                          color: primaryTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 32),
                      Row(
                        children: <Widget>[
                          Text(
                            'Know more',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 18,
                              color: secondaryTextColor,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: secondaryTextColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Hero(
            tag: planets.position,
            child: Image.asset(planets.iconImage),
          ),
          //top images
          Positioned(
            right: 24,
            bottom: 60,
            child: Text(
              planets.position.toString(),
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 200,
                color: primaryTextColor.withOpacity(0.08),
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
