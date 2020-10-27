import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
          child: Text("flatButton"),
          onPressed: (){},

        ),
        SizedBox(width: 10.0,),
        FlatButton.icon(
          icon: Icon(Icons.save),
          label: Text("flatButton"),
          onPressed: (){},
          textColor: Theme.of(context).accentColor,
        )
      ],
    );

    final Widget ragisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(
          child: Text("ragisedButton"),
          elevation: 2.0,
          onPressed: (){},
          shape: StadiumBorder(),
        ),
        SizedBox(width: 10.0,),
        RaisedButton.icon(
            icon: Icon(Icons.save),
            label: Text("ragisedButton"),
            elevation: 0.0,
            onPressed: (){},
            textColor: Theme.of(context).accentColor,
            shape:BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(20.0))
        )
      ],
    );

    final Widget outlintButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlineButton(
          child: Text("ragisedButton"),
          onPressed: (){},
          shape: StadiumBorder(),
          splashColor: Colors.grey,
          highlightColor: Colors.black54,
          textColor: Colors.black,
        ),
        SizedBox(width: 10.0,),
        OutlineButton.icon(
            icon: Icon(Icons.save),
            label: Text("ragisedButton"),
            onPressed: (){},
            borderSide: BorderSide(
                color: Colors.black
            ),
            textColor: Theme.of(context).accentColor,
            shape:BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10.0))
        )
      ],
    );

    final Widget fixWidgetButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 130,
          height: 50,
          child:
          OutlineButton(
            child: Text("ragisedButton"),
            onPressed: (){},
            shape: StadiumBorder(),
            splashColor: Colors.grey,
            highlightColor: Colors.black54,
            textColor: Colors.black,
          ),
        )
      ],
    );

    final Widget expandedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child:
          OutlineButton(
            child: Text("expandedButton"),
            onPressed: (){},
            shape: StadiumBorder(),
            splashColor: Colors.grey,
            highlightColor: Colors.black54,
            textColor: Colors.black,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 2,
          child:
          OutlineButton(
            child: Text("expandedButton"),
            onPressed: (){},
            shape: StadiumBorder(),
            splashColor: Colors.grey,
            highlightColor: Colors.black54,
            textColor: Colors.black,
          ),
        )
      ],
    );

    final Widget buttonBarButtonDemo = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Theme(
            data: Theme.of(context).copyWith(
                buttonBarTheme: ButtonBarThemeData(
                    buttonPadding: EdgeInsets.symmetric(horizontal: 10)
                )
            ),
            child: ButtonBar(
              children:[
                OutlineButton(
                  child: Text("expandedButton"),
                  onPressed: (){},
                  shape: BeveledRectangleBorder(),
                  splashColor: Colors.grey,
                  highlightColor: Colors.black54,
                  textColor: Colors.black,
                ),
                OutlineButton(
                  child: Text("expandedButton"),
                  onPressed: (){},
                  shape: BeveledRectangleBorder(),
                  splashColor: Colors.grey,
                  highlightColor: Colors.black54,
                  textColor: Colors.black,
                ),
              ],
            ),

          )
        ]
    );


    return Scaffold(
      appBar: AppBar(title: Text("Button_Demo"),
          elevation: 0.0),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children :[
            flatButtonDemo,
            ragisedButtonDemo,
            outlintButtonDemo,
            fixWidgetButtonDemo,
            expandedButtonDemo,
            buttonBarButtonDemo,
            buttonBarButtonDemo
          ],
        ),
      ),
    );
  }
}