import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './dialogdemo/alert_dialog_demo.dart';
import './dialogdemo/simple_dialog_demo.dart';
import './dialogdemo/buttom_sheet_demo.dart';
class DialogDemo extends StatefulWidget {
  @override
  _DialogDemoState createState() => _DialogDemoState();
}

class _DialogDemoState extends State<DialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dialog_Demo'),
          elevation: 0.0),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
            child: RaisedButton(
                child: Text("SimpleDialog"),
                  onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder:(context) => SimpleDialogDemo())
                  );
                  },
                  ),
        ),
                RaisedButton(
                  child: Text("AlertDialog"),
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder:(context) => AlertDialogDemo())
                    );
                  },
                ),
            RaisedButton(
              child: Text("bottomSheetDialog"),
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder:(context) => ButtomSheetDemo())
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
