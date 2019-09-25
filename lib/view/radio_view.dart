import 'package:flutter/material.dart';

class RadioView extends StatefulWidget {
  @override
  _RadioViewState createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  int _radioGroup=0;
  void _handleRadioValueChange(int value){
    setState(() {
       _radioGroup=value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioView"),
      ),
      body: Container(
        padding:EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Text("RadioGroupValue: $_radioGroup"),
              SizedBox(height: 30.0),
              RadioListTile(
                   value: 0,
                   groupValue: _radioGroup,
                   onChanged: _handleRadioValueChange ,
                  title: Text("Radio is check"),
                  subtitle: Text("where is  here"),
                  secondary: Icon(Icons.filter_1),
                  selected: _radioGroup==0,
              ),
            RadioListTile(
              value: 1,
              groupValue: _radioGroup,
              onChanged: _handleRadioValueChange ,
              title: Text("Radio is check"),
              subtitle: Text("where is  here"),
              secondary: Icon(Icons.filter_2),
              selected: _radioGroup==1,
            ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
//                  Radio(
//                   value: 0,
//                   groupValue: _radioGroup,
//                   onChanged: _handleRadioValueChange,
//                   activeColor: Colors.yellow,
//                  ),
//                 Radio(
//                   value: 1,
//                   groupValue: _radioGroup,
//                   onChanged: _handleRadioValueChange,
//                   activeColor: Colors.yellow,
//                 ),
             ],
           )
          ],
        ),
      ),
    );
  }
}
