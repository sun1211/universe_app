import 'package:flutter/material.dart';
import 'package:universe_app/constants.dart';
import 'package:universe_app/models/planet_Info.dart';
import 'package:universe_app/screen/detail/components/body.dart';

class DetailScreen extends StatelessWidget {
  final PlanetInfo planetInfo;
  const DetailScreen({Key key, this.planetInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(
        planetInfo: planetInfo,
      ),
    );
  }
}
