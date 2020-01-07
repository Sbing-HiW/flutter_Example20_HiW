import 'package:flutter/material.dart';

class ExpansionTileDome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("下拉框"),
      ),
      body: Center(
        child: ExpansionTile(
          title: Text("下拉框"),
          leading: Icon(Icons.cake),
          backgroundColor: Colors.red,
          children: <Widget>[
            ListTile(
              title: Text("内容一"),
              subtitle: Text("内容二"),
            ),
          ],
          initiallyExpanded: true,
        ),
      ),
    );
  }
}
