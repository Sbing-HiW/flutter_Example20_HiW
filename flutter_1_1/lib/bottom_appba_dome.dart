import 'package:flutter/material.dart';
import 'each_view.dart';

class BottomAppBarDome extends StatefulWidget {
  @override
  _BottomAppBarDomeState createState() => _BottomAppBarDomeState();
}

class _BottomAppBarDomeState extends State<BottomAppBarDome> {
  List<Widget> _eachView; //创建视图数组
  int _index = 0; //数组索引，通过改变索引值改变视图
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _eachView = List();
    _eachView..add(EachView("Home"))..add(EachView("Time"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachView[_index],
      floatingActionButton: FloatingActionButton(
        // floatingActionButton 【FAB】可交互浮动按钮
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return EachView("New Page");
          }));
        },
        tooltip: "*********", //长按提示
        child: Icon(
          Icons.add,
          color: Colors.green,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, // 悬浮按钮与底栏融合
      bottomNavigationBar: BottomAppBar(
        //BottomAppBar 底部工具栏
        color: Colors.red,
        shape:
            CircularNotchedRectangle(), // shape设置底栏的形状  CircularNotchedRectangle() 有缺口的圆形矩形
        child: Row(
          mainAxisSize: MainAxisSize.max, //主轴
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              // IconButtton 图标按钮
              icon: Icon(Icons.home), // Icon 图标
              color: Colors.green,
              onPressed: () {
                //onPressed 按下事件
                setState(() {
                  //setState 设定状态
                  _index = 0; //设置_index为0
                });
              },
              tooltip: "*********", //长按提示
            ),
            IconButton(
              icon: Icon(Icons.access_alarm),
              color: Colors.green,
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
               tooltip: "*********", //长按提示
            ),
          ],
        ),
      ),
    );
  }
}
