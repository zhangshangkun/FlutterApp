import 'package:flutter/material.dart';

class ButtonView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonView = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text("落岑"),
          splashColor: Colors.red,
          onPressed: () {},
        ),
        SizedBox(width: 10.0),
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("落岑"),
          splashColor: Colors.red,
        )
      ],
    );
    final Widget raisedButtonView = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Colors.lightBlueAccent,
            buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
//              shape: BeveledRectangleBorder(
//                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
                shape: StadiumBorder()),
          ),
          child: RaisedButton(
            child: Text("落岑"),
            splashColor: Colors.red,
            onPressed: () {},
            color: Colors.brown,
            textColor: Colors.white,
          ),
        ),
        SizedBox(width: 10.0),
        RaisedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("落岑"),
          splashColor: Colors.red,
          color: Colors.yellow,
          textColor: Colors.white,
        )
      ],
    );
    final Widget outLineButtonView = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Colors.lightBlueAccent,
            buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
//              shape: BeveledRectangleBorder(
//                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
                shape: StadiumBorder()),
          ),
          child: OutlineButton(
            child: Text("落岑"),
            splashColor: Colors.red,
            onPressed: () {},
            borderSide: BorderSide(
              color: Colors.yellow,
            ),
            textColor: Colors.black87,
            highlightColor: Colors.red,
          ),
        ),
        SizedBox(width: 10.0),
        OutlineButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("落岑"),
          splashColor: Colors.red[100],
          borderSide: BorderSide(
            color: Colors.yellow,
          ),
          textColor: Colors.black87,
          highlightColor: Colors.red,
        )
      ],
    );
    final Widget fixedButtonView = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 180.0,
          child: OutlineButton(
            onPressed: () {},
            child: Text("add"),
            splashColor: Colors.yellow[100],
            borderSide: BorderSide(color: Colors.yellow),
            textColor: Colors.black,
            highlightColor: Colors.yellow,
          ),
        )
      ],
    );
    final Widget expandedButtonView=Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
            child: OutlineButton(
              onPressed: (){},
              child: Text("Add"),
              splashColor: Colors.yellow[100],
              borderSide: BorderSide(
                  color: Colors.yellow
              ),
              textColor: Colors.black,
              highlightColor: Colors.yellow,
            )
        ),
        SizedBox(width: 10.0),
        Expanded(
            flex: 2,//默认是1  占比屏幕宽度
            child: OutlineButton(
              onPressed: (){},
              child: Text("Add"),
              splashColor: Colors.yellow[100],
              borderSide: BorderSide(
                  color: Colors.yellow
              ),
              textColor: Colors.black,
              highlightColor: Colors.yellow,
            )
        )
      ],
    );
    final Widget buttonBarView= Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
            data: Theme.of(context).copyWith(
                buttonTheme: ButtonThemeData(
                    padding: EdgeInsets.symmetric(horizontal: 32.0)
                )
            ),
            child:  ButtonBar(
              children: <Widget>[
                OutlineButton(
                  onPressed: (){},
                  child: Text("Add"),
                  splashColor: Colors.yellow[100],
                  borderSide: BorderSide(
                      color: Colors.yellow
                  ),
                  textColor: Colors.black,
                  highlightColor: Colors.yellow,
                ),
                OutlineButton(
                  onPressed: (){},
                  child: Text("Add"),
                  splashColor: Colors.yellow[100],
                  borderSide: BorderSide(
                      color: Colors.yellow
                  ),
                  textColor: Colors.black,
                  highlightColor: Colors.yellow,
                )
              ],
            )
        )
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonView"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             flatButtonView,
            raisedButtonView,
            outLineButtonView,
            fixedButtonView,
            expandedButtonView,
            buttonBarView
          ],
        ),
      ),
    );
  }
}