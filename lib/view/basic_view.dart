import 'package:flutter/material.dart';

class BasicView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://resources.ninghao.org/images/space-skull.jpg"),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
             Colors.indigoAccent[400].withOpacity(1.0),
            BlendMode.hardLight
          )
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 40.0, color: Colors.white),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                border: Border.all(
                    color: Colors.red, width: 3.0, style: BorderStyle.solid),
                //borderRadius: BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(5.0, 10.0),
                      blurRadius: 25.0,
                      color: Color.fromRGBO(16, 20, 188, 1.0),
                      spreadRadius: -6.0)
                ],
                shape: BoxShape.circle,
//                gradient: RadialGradient(
//                  colors: [
//                     Color.fromRGBO(16, 20, 188, 1.0),
//                    Color.fromRGBO(46, 202, 188, 1.0),
//                  ]
//                ),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(16, 20, 188, 1.0),
                  Color.fromRGBO(46, 202, 188, 1.0)
                ], begin: Alignment.topLeft, end: Alignment.bottomLeft)),
          ),
        ],
      ),
    );
  }
}

class RichTextView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "王者荣耀",
        style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
            fontStyle: FontStyle.italic),
        children: [
          TextSpan(
            text: "王者荣耀",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w100,
                color: Colors.yellow,
                fontStyle: FontStyle.normal),
          ),
        ],
      ),
    );
  }
}

class TextView extends StatelessWidget {
  final String _author = "落岑";
  final String _title = "EditPlus中文";
  final TextStyle _textStyle = TextStyle(fontSize: 16.0);

  @override
  Widget build(BuildContext context) {
    return Text(
        "《$_title》---- $_author ===EditPlus中文绿色破解版是一款非常实用的文字编辑器。EditPlus在全世界都被广泛使用，"
        "其功能之强大足以代替windows系统自带的记事本文字编辑器，除了记事本拥有的基本功能外",
        textAlign: TextAlign.left,
        maxLines: 3,
        style: _textStyle,
        overflow: TextOverflow.ellipsis);
  }
}
