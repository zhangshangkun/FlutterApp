import 'package:flutter/material.dart';
class BottomNavigtionBars extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _BottomNavigtionBarsState();
  }
}
class _BottomNavigtionBarsState extends State<BottomNavigtionBars>{
  int _currentIndex=0;
  void _onTapHandler(int index){
    setState((){
      _currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed,
      fixedColor:Colors.cyanAccent,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("首頁")
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            title: Text("商城")
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            title: Text("視頻")
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text("我的"),
        )
      ],
    );;
  }
}