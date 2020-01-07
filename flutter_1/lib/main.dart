/* 底部导航栏 */

import 'package:flutter/material.dart';
import 'bottom_navigation.dart';

void main() => runApp(MyApp());

// stlss
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "底部导航浪 bottomNavigationBar",
      theme: ThemeData( // theme 主题 ThemeData 主题数据
        primarySwatch: Colors.deepOrange ,// primarySwatch 主色调
        primaryColor: Colors.blue
      ),
      home: BottomNavgationWidget(),//入口文件
    );
  }
}
