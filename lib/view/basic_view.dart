import 'package:flutter/material.dart';

class BasicView extends StatelessWidget {
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
