import 'package:flutter/material.dart';
import 'button_demo_type.dart';
import 'floating_action_bar.dart';
import 'popup_menu__button_demo.dart';
import 'text_filed_demo.dart';
import 'chebox_demo.dart';
import 'radio_button_demo.dart';
import 'date_time_demo.dart';
import 'dialog_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FlatingActionButton"),
      elevation: 0.0),
    body: ListView(
      children: [
        ListItem(title :"buttonDemo", page: ButtonDemo(),),
        ListItem(title :"floatingActionBar", page: FloatingActionButtonDemo()),
        ListItem(title :"popuMenuButton", page: PopuMenuButtonDemo()),
        ListItem(title :"TextFileDemo", page: TextFiledDemo()),
        ListItem(title :"CheboxDemo", page: CheboxDemo()),
        ListItem(title :"RadioButtoDemo", page: RadioButtonDemo()),
        ListItem(title :"DateTimeDemo", page: DateTimeDemo()),
        ListItem(title :"DialogDemo", page: DialogDemo()),
      ],
    ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) =>page)
        );
      },
    );
  }
}
