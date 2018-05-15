import 'package:flutter/material.dart';

class CustomPlayer extends StatefulWidget {
  CustomPlayerTheme createState() => new CustomPlayerTheme();
}

class CustomPlayerTheme extends State<CustomPlayer> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Icon(IconData(0xf395, fontFamily: 'cupertino'), color: Colors.blue),

          new Icon(IconData(0xf398, fontFamily: 'cupertino'), color: Colors.blue),

          new Icon(IconData(0xf399, fontFamily: 'cupertino'), color: Colors.blue)
        ],
      ),
    );
  }
}
