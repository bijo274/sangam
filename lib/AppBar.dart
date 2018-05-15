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
              onPressed: OptionDialog)
        ],
      ),
      body:
          new CustomPlayer(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void OptionDialog() {
    List<String> options = <String>[
      'Add to playlist',
      'Go to artist',
      'Go to album',
      'clear queue',
      'Save queue'
    ];
    new ListView(
      children: <Widget>[
        new Text("Heeloo"),
        new Text("Heeloo2"),
        new Text("Heeloo3"),
        new Text("Heeloo4")
      ],
    );
  }
}
