import 'package:flutter/material.dart';

class CheboxDemo extends StatefulWidget {
  @override
  _CheboxDemoState createState() => _CheboxDemoState();
}

class _CheboxDemoState extends State<CheboxDemo> {
  bool checkBoxFlg = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chebox_Demo'),
      elevation: 0.0),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
                value: checkBoxFlg, 
                onChanged: (value){
                  setState(() {
                    checkBoxFlg = value;
                  });
                },
                title: Text("This is CheckBox"),
              secondary: Icon(Icons.book),
              subtitle: Text("Desicribtion"),
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              ],
            )
          ],
        ),
      ),
    );
  }
}
