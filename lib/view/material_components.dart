import 'package:flutter/material.dart';
import 'button_view.dart';
import 'floating_action_button.dart';
import 'popup_menu_view.dart';
import 'form_demo.dart';
import 'checkbox_view.dart';
import 'radio_view.dart';
import 'switch_view.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("落岑"),
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: "Form",page: FormDemo()),
          ListItem(title: "FloatingActionButton", page: FloatingActionButtonDemo()),
          ListItem(title: "ButtonView", page: ButtonView()),
          ListItem(title: "PopupMenuButton",page: PopupMenuButtonView()),
          ListItem(title: "CheckBoxView",page: checkBoxView()),
          ListItem(title:"RadioView",page: RadioView()),
          ListItem(title: "SwitchView",page: SwitchView())
        ],
      ),
    );
  }
}
class _widgetView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WidgetView"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

              ],
            )
          ],
        ),
      ),
    );
  }
}


class ListItem extends StatelessWidget {
  final String title;
  final Widget page;
  ListItem({this.title, this.page});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}
