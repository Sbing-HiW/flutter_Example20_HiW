import 'package:flutter/material.dart';
import 'expansion_tlie.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "下拉框",
      theme: ThemeData.dark(),
      home: ExpansionTileDome(),
    );
  }
}