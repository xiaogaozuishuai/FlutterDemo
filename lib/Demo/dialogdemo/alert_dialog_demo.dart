import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {

  _onChange(){
    showDialog(
      barrierDismissible: false,
        context: context,
        builder: (BuildContext context){
          return AlertDialog(

            title: Text("AlertDialog"),
            content: Text("Are you sure this choice? "),
            actions: [
              FlatButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text("Cancel")
              ),
              FlatButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text("OK")
              )
            ],
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert_Dialog_Demo'),
      elevation: 0.0),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: _onChange,
              child: Text("Please"),

            )
          ],
        ),
          ],
        ),
      ),
    );
  }
}
