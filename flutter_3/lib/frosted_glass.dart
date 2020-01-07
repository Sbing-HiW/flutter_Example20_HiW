import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/material.dart' as prefix0;

class FrostedClassDome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ConstrainedBox(
            //约束性盒子, 添加额外的约束条件 child上
            constraints: const BoxConstraints.expand(),
            child: prefix0.Image.network(
                "https://img.moegirl.org/common/thumb/2/22/10951654.png/300px-10951654.png"),
          ),
          Center(child: ClipRect(//可裁切的矩形
             child: BackdropFilter(//背景过滤器
               filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
               child: Opacity(
                 opacity: 0.5,
                 child: Container(
                   width: 250.0,
                   height: 400.0,
                   decoration: BoxDecoration(color: Colors.grey[200]),// 盒子修饰器
                   child: Center(
                     child: Text("古明地觉",style: Theme.of(context).textTheme.display1,),
                   ),
                 ),
               ),
             ),
          ),)
        ],
      ),
    );
  }
}
