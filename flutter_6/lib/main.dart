import 'package:flutter/material.dart';
import 'warp_dome.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Warp流式布局",
      theme: ThemeData.light(),
      home: WarpDome(

      ),
    );
  }
}