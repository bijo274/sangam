import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var options = [
      'Add to playlist',
      'Go to artist',
      'Go to album',
      'clear queue',
      'Save queue'
    ];
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
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
          onPressed: null),
      actions: <Widget>[
        const IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.blue,
            ),
            onPressed: null)
      ],
    ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
