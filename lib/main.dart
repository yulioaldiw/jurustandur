import 'package:flutter/material.dart';
import 'package:jurustani/pages/launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jurus Tandur',
      theme: new ThemeData(),
      home: new LauncherPage(),
    );
  }
}