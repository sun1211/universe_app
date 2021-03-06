import 'package:flutter/material.dart';
import 'package:universe_app/constants.dart';
import 'package:universe_app/models/planet_Info.dart';

class DetailDescription extends StatelessWidget {
  const DetailDescription({
    Key key,
    @required this.planetInfo,
  }) : super(key: key);

  final PlanetInfo planetInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 300),
          Text(
            planetInfo.name,
            style: TextStyle(
              fontFamily: 'Avenir',
              fontSize: 56,
              color: primaryTextColor,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            'Solar System',
            style: TextStyle(
              fontFamily: 'Avenir',
              fontSize: 31,
              color: primaryTextColor,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.left,
          ),
          Divider(color: Colors.black38),
          SizedBox(height: 32),
          Text(
            planetInfo.description ?? '',
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: 'Avenir',
              fontSize: 20,
              color: contentTextColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 32),
          Divider(color: Colors.black38),
        ],
      ),
    );
  }
}
