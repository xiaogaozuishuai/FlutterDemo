import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {


  final _floatingActionButtion = FloatingActionButton(
      onPressed: (){},
      child: Icon(Icons.add),
      elevation: 0.0,
      backgroundColor: Colors.black87,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("floatingActionButtonDemo"),
        elevation: 0.0,
      ),
      //floatingActionButton: _floatingActionButtonExtend,
      floatingActionButton: _floatingActionButtion,
    );
  }
}

final _floatingActionButtonExtend = FloatingActionButton.extended(
    onPressed: (){ },
    label: Text("Floating Action Extended"),
    elevation: 0.0,
    icon: Icon(Icons.add)

);


