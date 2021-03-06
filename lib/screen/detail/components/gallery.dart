import 'package:flutter/material.dart';
import 'package:universe_app/models/planet_Info.dart';

class Gallery extends StatelessWidget {
  const Gallery({
    Key key,
    @required this.planetInfo,
  }) : super(key: key);

  final PlanetInfo planetInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.only(left: 32.0),
      child: ListView.builder(
          itemCount: planetInfo.images.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(
                    planetInfo.images[index],
                    fit: BoxFit.cover,
                  )),
            );
          }),
    );
  }
}
