import 'package:flutter/material.dart';
import 'keep_alive_done.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "上部导航栏+页面保存",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("上部导航栏+页面保存"),
        ),
        body: KeepAliveDome(),
      ),
    );
  }
}

class KeepAliveDome extends StatefulWidget {
  @override
  _KeepAliveDomeState createState() => _KeepAliveDomeState();
}

class _KeepAliveDomeState extends State<KeepAliveDome>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KeepAliveDome"),
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.directions_bike),
              text: "自行车",
            ),
            Tab(
              icon: Icon(Icons.directions_transit),
              text: "火车",
            ),
            Tab(
              icon: Icon(Icons.directions_car),
              text: "汽车",
            ),
            Tab(
              icon: Icon(Icons.directions_run),
              text: "步行",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          MyHomePage(),
          MyHomePage(),
          MyHomePage(),
          MyHomePage(),
        ],
      ),
    );
  }
}
