import 'package:flutter/material.dart';
import 'package:universe_app/constants.dart';
import 'package:universe_app/screen/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Body(),
    );
  }
}
