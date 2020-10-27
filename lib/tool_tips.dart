import 'package:flutter/material.dart';

class ToolTipsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tool Tips Demo")),
      body: Center(
        child: Tooltip(
          child: Image.asset("assets/images/timg.jpg"),
            message: "大长腿小姐姐!"),
      ),
    );
  }
}

