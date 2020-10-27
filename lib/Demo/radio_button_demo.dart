import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RadioButtonDemo extends StatefulWidget {
  @override
  _RadioButtonDemoState createState() => _RadioButtonDemoState();
}

class _RadioButtonDemoState extends State<RadioButtonDemo> {

  int _radioGroup =0;

  void _valueChange(int valueIndex){
    setState(() {
      _radioGroup = valueIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RadioButtonDemo'),
      elevation: 0.0),
      body: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
             Text("RadioGroup: $_radioGroup "),
            SizedBox(height: 10.0),
            RadioListTile(
                value: 0,
                groupValue: _radioGroup,
                onChanged: _valueChange,
                title: Text("RadioGroup_A"),
              subtitle: Text("Descrition"),
              secondary: Icon(Icons.filter_1),
            ),
             RadioListTile(
               value: 1,
               groupValue: _radioGroup,
               onChanged: _valueChange,
               title: Text("RadioGroup_B"),
               subtitle: Text("Descrition"),
               secondary: Icon(Icons.filter_2),
             )
           ],
          )
      ),

    );
  }
}
