import 'package:flutter/material.dart';
import 'package:sangam/AppBar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto'
      ),
      home: new MyAppBar(title: 'Sangam'),
    );
  }
}
