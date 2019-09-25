import 'package:flutter/material.dart';

class SwitchView extends StatefulWidget {
  @override
  _SwitchViewState createState() => _SwitchViewState();
}

class _SwitchViewState extends State<SwitchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("SwitchView"),
       ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 Switch(
                     value: null,
                     onChanged: null
                 ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
