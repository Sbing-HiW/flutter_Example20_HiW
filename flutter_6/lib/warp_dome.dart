import 'package:flutter/material.dart';

class WarpDome extends StatefulWidget {
  @override
  _WarpDomeState createState() => _WarpDomeState();
}

class _WarpDomeState extends State<WarpDome> {
  List<Widget> list;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = List<Widget>()..add(buildAddButton());
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("warp流式布局"),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: width,
            height: height,
            color:Colors.pink,
            child: Wrap(
              children: list,
              spacing: 10.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAddButton() {
    return GestureDetector(
      onTap: () {
        if (list.length < 20) {
          setState(() {
            list.insert(list.length - 1, buildPhoto());
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.black26,
          child: Icon(Icons.add_a_photo),
        ),
      ),
    );
  }

  Widget buildPhoto() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 80.0,
        height: 80.0,
        color: Colors.yellow,
        child: Text(
          "照片",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
