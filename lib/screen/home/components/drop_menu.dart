import 'package:flutter/material.dart';

class DropMenu extends StatelessWidget {
  const DropMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Explore',
            style: TextStyle(
              fontFamily: 'Avenir',
              fontSize: 40,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
          DropdownButton(
            items: [
              DropdownMenuItem(
                child: Text(
                  'Solar System',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 24,
                    // color: const Color(0x7cdbf1ff),
                    color: Colors.black45,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
            onChanged: (value) {},
            icon: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Image.asset('assets/drop_down_icon.png'),
            ),
            underline: SizedBox(),
          ),
        ],
      ),
    );
  }
}
