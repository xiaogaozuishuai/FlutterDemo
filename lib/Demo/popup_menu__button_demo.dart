import 'package:flutter/material.dart';

class PopuMenuButtonDemo extends StatefulWidget {
  @override
  _PopuMenuButtonDemoState createState() => _PopuMenuButtonDemoState();
}

class _PopuMenuButtonDemoState extends State<PopuMenuButtonDemo> {

  String _currentMenu = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PopuMenuDemo"),
      elevation: 0.0),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_currentMenu),
                PopupMenuButton(
                  onSelected: (value){
                    setState(() {
                      _currentMenu = value;
                    });
                    print(_currentMenu);
                  },
                    itemBuilder: (context) => [
                  PopupMenuItem(
                    value: "Home",
                      child: Text("Home"),
                  ),
                  PopupMenuItem(
                      value: "Company",
                      child: Text("Company")
                  ),
                  PopupMenuItem(
                      value: "Toilet",
                      child: Text("Toilet")
                  ),
                ])
              ],
            )
          ],
        ),
      ),
    );
  }
}

