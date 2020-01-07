import 'package:flutter/material.dart';
import 'bottom_appba_dome.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "自定义底部导航栏",
      theme: ThemeData(
        primarySwatch: Colors.orange  //主题颜色
      ),
      home: BottomAppBarDome(

      ),
    );
  }
}