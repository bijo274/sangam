import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:sangam/CustomPlayer.dart';

class MyAppBar extends StatefulWidget {
  MyAppBar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyAppBarState createState() => new _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    bool onTapped;
    Widget dropDownMenu = new Semantics(
      enabled: onTapped,
      child: new DropDownMenu(),
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          widget.title,
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.blue,
              letterSpacing: 1.5),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const IconButton(
            icon: const Icon(IconData(0xf3cf, fontFamily: 'cupertino'),
                size: 27.0, color: Colors.blue),
            onPressed: null),
        actions: <Widget>[
          new IconButton(
              icon: const Icon(const IconData(0xf397, fontFamily: 'cupertino')),
              color: Colors.blue,
              tooltip: 'List of Playback options',
              onPressed: () {
                setState(() {
                  onTapped = true;
                  new DropDownMenu();
                });
              })
        ],
      ),
      body:
          new CustomPlayer(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class DropDownMenu extends StatefulWidget {
  CustomDropDown createState() => new CustomDropDown();
}

class CustomDropDown extends State<DropDownMenu> {
  @override
  Widget build(BuildContext context) {
    debugPrint("Executed!!!");
    new ListView(
      children: <Widget>[
        new Icon(IconData(0xf395, fontFamily: 'cupertino'), color: Colors.blue),
        new Icon(IconData(0xf398, fontFamily: 'cupertino'), color: Colors.blue),
        new Icon(IconData(0xf399, fontFamily: 'cupertino'), color: Colors.blue)
      ],
    );
    // TODO: implement build
  }
}
