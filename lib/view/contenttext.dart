import 'package:flutter/material.dart';
class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "落岑",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange),
      ),
    );
  }
}