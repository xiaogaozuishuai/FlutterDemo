import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  DateTime currentTime= DateTime.now();
  TimeOfDay currentTm = TimeOfDay(hour: 10, minute: 30);

  Future<void> _selectDate() async{
   DateTime datTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2030),
    );
   if(null!=datTime){
     setState(() {
       currentTime = datTime;
     });
   }
}

 Future<void> _selectTime() async{
    final TimeOfDay datTm = await showTimePicker(
        context: context,
        initialTime: currentTm);
    if(null != datTm){
      setState(() {
        currentTm = datTm;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data_Time_Demo'),
      elevation: 0.0),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: _selectDate,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(DateFormat.yMd().format(currentTime)),
                      Icon(Icons.access_alarms)
                    ],
                  ),
                ),
                InkWell(
                  onTap: _selectTime ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(currentTm.format(context)),
                      Icon(Icons.access_alarms)
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
