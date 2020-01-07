import 'package:flutter/material.dart';
import 'frosted_glass.dart';
void main() =>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "模糊",
      theme: ThemeData(backgroundColor: Colors.green),
      home: Scaffold(
        body: FrostedClassDome(),
      ),
    );
  }
}