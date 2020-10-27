import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Option{
  A,B,C
}

class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  String choiseOption = "Noting";

  _showSimpleDialog() async{
  final option = await showDialog(
        context: context,
      builder: (context){
          return SimpleDialog(
            title: Text('Simple_Dialog_Demo'),
            elevation: 0.0,
            children:[
              SimpleDialogOption(
                onPressed: (){
                  Navigator.pop(context,Option.A);
                },
                child: Text('Option_A'),
              ),
              SimpleDialogOption(
                onPressed: (){
                  Navigator.pop(context,Option.B);
                },
                child: Text('Option_B'),
              ),
              SimpleDialogOption(
                onPressed: (){
                  Navigator.pop(context,Option.C);
                },
                child: Text('Option_C'),
              ),
            ],
          );
      }
    );
   switch(option){
     case Option.A :
       setState(() {
         choiseOption = "Option_A";
       });
       break;
     case Option.B :
       setState(() {
         choiseOption = "Option_B";
       });
       break;
     case Option.C :
       setState(() {
         choiseOption = "Option_C";
       });
       break;
   }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple_Dialog_Demo'),
      elevation: 0.0),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("You're choice is $choiseOption ")
              ],
            )

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.format_list_bulleted),
        onPressed: _showSimpleDialog,
      ),
    );
  }
}

