import 'package:flutter/material.dart';
class  NavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               FlatButton(
                 child: Text("Home"),
                 onPressed: (){
                   Navigator.of(context).push(
                     MaterialPageRoute(builder: (BuildContext context)=>Page(title: "Home"))
                   );
                 },
               ),
               FlatButton(
                 child: Text("About"),
                 onPressed:(){
                   Navigator.pushNamed(context, "/about");
                 },
               )
             ],
           ),
        ),
    );
  }
}
class Page extends StatelessWidget{
  final String title;
  Page({
    this.title
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text(title),
       ),
      floatingActionButton: FlatButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back)
      ),
    );
  }
}

