import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/email_screen.dart';
import 'pages/alarm_screen.dart';
import 'pages/dis_screen.dart';

// stful 
class BottomNavgationWidget extends StatefulWidget {  //StatefulWidget 具有可变状态(state)的窗口组件（widget）
  @override
  _BottomNavgationWidgetState createState() => _BottomNavgationWidgetState();
}

class _BottomNavgationWidgetState extends State<BottomNavgationWidget> {  //继承state
  final _BottomNavigatonColor = Colors.blue;

  int _curentTndex = 0;

  List<Widget> list = List();
  


  @override
  void initState(){  //initState 初始化状态
  list
  ..add(HomeScreen())  // 建造者模式 ..语法 返回调用者本身
  ..add(EmailScreen())
  ..add(AlarmScreen())
  ..add(DisScreen());
  super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_curentTndex],
      bottomNavigationBar: BottomNavigationBar( // bottomNavigationBar 底部导航栏 
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.disc_full,
              color: _BottomNavigatonColor,
            ),
            title: Text(
              "dis：$_curentTndex",
              style: TextStyle(color: _BottomNavigatonColor),
            )
          ),
          BottomNavigationBarItem(  //导航栏内容
            icon: Icon(
              Icons.home,
              color: _BottomNavigatonColor,
            ),
            title: Text(
              "Home：$_curentTndex",
              style: TextStyle(color: _BottomNavigatonColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _BottomNavigatonColor,
            ),
            title: Text(
              "Email：$_curentTndex",
              style: TextStyle(color: _BottomNavigatonColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.alarm,
              color: _BottomNavigatonColor,
            ),
            title: Text(
              "alarm：$_curentTndex",
              style: TextStyle(color: _BottomNavigatonColor),
            )
          ),
          
        ],
        currentIndex: _curentTndex,  // currentIndex 当前指数 
        onTap: (int index){          // onTap 按下
            setState(() {            // setState 设置状态
              _curentTndex = index;  
            });
        },
      ),
    );
  }
}
