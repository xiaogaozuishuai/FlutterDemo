import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFiledDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Text File Demo')),
      body: Theme(
        data: ThemeData.light(),
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RegisterFormDemo()
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterFormDemo extends StatefulWidget {
  @override
  _RegisterFormDemoState createState() => _RegisterFormDemoState();
}

class _RegisterFormDemoState extends State<RegisterFormDemo> {
  final ragisterFormStateKey = GlobalKey<FormState>();
  String userName,passWord;
  bool autovaliDateFlg = false;

  void submitRegisterForm(){
    if(ragisterFormStateKey.currentState.validate()){
      ragisterFormStateKey.currentState.save();
      debugPrint("userName : $userName");
      debugPrint("passWord : $passWord");
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text("Ragister......"),
        )
      );
      
      
      
    }else{
      setState(() {
        autovaliDateFlg = true;
      });
    }

  }
  String usernameValidator(username) {
    if(username.isEmpty){
      return "username is not null";
    }else{
      return null;
    }
  }
  String passwordValidator(username) {
    if(username.isEmpty){
      return "password is not null";
    }else{
      return null;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: ragisterFormStateKey,
      child: Column(
        children: [
          TextFormField(
            validator: usernameValidator,
            autovalidate: autovaliDateFlg,
            onSaved: (userNameValue){
              userName = userNameValue;
            },
            decoration: InputDecoration(
              labelText: "userName",
              helperText: '',
            ),
          ),
          TextFormField(
            validator: passwordValidator,
            autovalidate: autovaliDateFlg,
            onSaved: (passWordValue){
              passWord = passWordValue;
            },
            obscureText: true,
            decoration: InputDecoration(
                labelText: "passWord",
              helperText: '',
            ),
          ),
          SizedBox(height: 32.0,),
          Container(
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text("Raised_Button"),
              elevation: 0.0,
              onPressed: submitRegisterForm,
            ),
          )
        ],
      ),
    );
  }
}




class TextFildTest extends StatefulWidget {
  @override
  _TextFildTestState createState() => _TextFildTestState();
}

class _TextFildTestState extends State<TextFildTest> {
  final textEditingController = TextEditingController();
  @override
  void initState() {
    super.initState();
    textEditingController.addListener(() {
      debugPrint("input: ${textEditingController.text}");
    });

  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      /*onChanged: (newValue){
        debugPrint("onchange : $newValue");
      },
      onSubmitted: (value){
        debugPrint("submitted : $value ");
      },*/
      decoration: InputDecoration(
        icon:Icon(Icons.account_circle),
        labelText: "Account",
        hintText: "input Account Please",
        filled: true
      ),
    );
  }
}



