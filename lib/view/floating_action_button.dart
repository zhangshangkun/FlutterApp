import 'package:flutter/material.dart';
class FloatingActionButtonDemo extends StatelessWidget {
  final Widget _FloatActonButton = FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
    backgroundColor: Colors.yellow,
//      shape: BeveledRectangleBorder(
//      borderRadius: BorderRadius.all(Radius.circular(10.0))
//    ),
  );
  final Widget _FloatActionButtonExtended = FloatingActionButton.extended(
    onPressed: () {},
    label: Text("落岑"),
    backgroundColor: Colors.lightBlue,
    icon: Icon(Icons.add),
    // 默认圆形
//      shape: BeveledRectangleBorder(
//        borderRadius: BorderRadius.all(Radius.circular(30.0))
//      ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("落岑"),
        ),
        floatingActionButton: _FloatActonButton,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 80.0,
          ),
          shape: CircularNotchedRectangle(),
        ));
  }
}
