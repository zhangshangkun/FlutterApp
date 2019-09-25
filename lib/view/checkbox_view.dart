import 'package:flutter/material.dart';

class checkBoxView extends StatefulWidget {
  @override
  CheckBoxViewState createState() => CheckBoxViewState();
}

class CheckBoxViewState extends State<checkBoxView> {
  bool _checkBoxItem=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBoxView"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
                  value: _checkBoxItem,
                  onChanged: (value){
                    setState(() {
                       _checkBoxItem=value;
                    });
                  },
                 title: Text("我是谁？"),
                 secondary: Icon(Icons.wb_sunny),
                 subtitle: Text("小面包"),
                 selected: _checkBoxItem,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Checkbox(
//                  value: _checkBoxItem,
//                  activeColor: Colors.yellow,
//                  onChanged: (value){
//                    setState(() {
//                      _checkBoxItem=value;
//                    });
//                  },
//                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
