import 'package:flutter/material.dart';
import 'search_bar_dome.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "搜索",
      theme: ThemeData.light(),
      home: SearchBarDome(),
    );
  }
}
