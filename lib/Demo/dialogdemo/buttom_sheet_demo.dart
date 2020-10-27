import 'package:flutter/material.dart';
import 'dart:async';

class ButtomSheetDemo extends StatefulWidget {
  @override
  _ButtomSheetDemoState createState() => _ButtomSheetDemoState();
}

class _ButtomSheetDemoState extends State<ButtomSheetDemo> {
final _buttomSheetScaffoldKey = GlobalKey<ScaffoldState>();
String choiceOption = "";

  _onTopButtomSheet(){
    _buttomSheetScaffoldKey.currentState
        .showBottomSheet((context){
    return BottomAppBar(
    child: Container(
        height: 100,
        width: double.infinity,
      child: Row(
        children: [
          Icon(Icons.pause_circle_filled),
          SizedBox(width: 20,),
          Text("01:30 / 03:30"),
          Expanded(
              child:Text("Fix you  -Coldplay ",textAlign: TextAlign.right)),
        ],
      ),
    ),
    );
    });

  }

Future _onTopButtomModelSheet() async{
  final option = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context){
          return Container(
            height: 200,
            child: Column(
              children: [
                ListTile(
                  title: Text("Option_A"),
                  onTap: (){
                    Navigator.pop(context,"A");
                  },
                ),
                ListTile(
                  title: Text("Option_B"),
                  onTap: (){
                    Navigator.pop(context,"B");
                  },
                ),
                ListTile(
                  title: Text("Option_C"),
                  onTap: (){
                    Navigator.pop(context,"C");
                  },
                )
              ],
            ),
          );
        });
  setState(() {
    choiceOption = option;
  });
  print(option);

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _buttomSheetScaffoldKey,
      appBar: AppBar(title: Text("Buttom_Sheet_Demo"),
      elevation: 0.0),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Chioce is $choiceOption "),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                    onPressed: _onTopButtomSheet,
                    child: Text("ButtomSheetButton")
                ),
              FlatButton(
                  onPressed: _onTopButtomModelSheet,
                  child: Text("ButtomSheetModelButton"))
              ],
            )
          ],
        ),
      ),
    );
  }

}
