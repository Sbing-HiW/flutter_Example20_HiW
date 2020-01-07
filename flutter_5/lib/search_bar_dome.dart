import 'package:flutter/material.dart';
import 'asset.dart';

class SearchBarDome extends StatefulWidget {
  @override
  _SearchBarDomeState createState() => _SearchBarDomeState();
}

class _SearchBarDomeState extends State<SearchBarDome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: searchBarDelegate());
            },
          )
        ],
      ),
    );
  }
}

class searchBarDelegate  extends SearchDelegate<String> {
  // 搜索关闭方法
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => query = "",
      ),
    ];
  }

  // 箭头方法
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () => close(context, null));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: Card(
        color: Colors.redAccent,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSuggest
        : searchList.where((input) => input.startsWith(query)).toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) => ListTile(
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: TextStyle(
                      color: Colors.grey,
                    ))
              ]),
        ),
      ),
    );
  }
}
