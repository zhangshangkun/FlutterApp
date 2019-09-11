import "package:flutter/material.dart";
import '../model/post.dart';

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBulider();
  }
}

class GridViewBulider extends StatelessWidget {
  Widget _gridViewBulider(BuildContext context, int index) {
    return Container(
      child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Image.network(posts[index].imageUrl),
           Text(posts[index].title,style: TextStyle(fontSize: 20.0,color: Colors.yellow),overflow: TextOverflow.ellipsis),
         ],
      ),
//      child:Container(
//        i
//        decoration: BoxDecoration(
//             c
////            Image(image: NetworkImage(posts[index].imageUrl), fit: BoxFit.cover),
////            Text("")
//        ),
//      )
//
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: posts.length,
        itemBuilder: _gridViewBulider,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 16.0, mainAxisSpacing: 16.0));
  }
}

class GridViewExtent extends StatelessWidget {
  List<Widget> _bulidTitle(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.yellow[400],
        alignment: Alignment(0.0, 0.0),
        child: Text("Item$index",
            style: TextStyle(fontSize: 20.0, color: Colors.cyanAccent)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        maxCrossAxisExtent: 150.0,
        children: _bulidTitle(100));
  }
}

class GridViewCount extends StatelessWidget {
  List<Widget> _bulidTitle(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.yellow[400],
        alignment: Alignment(0.0, 0.0),
        child: Text("Item$index",
            style: TextStyle(fontSize: 20.0, color: Colors.cyanAccent)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        crossAxisCount: 3,
        children: _bulidTitle(100));
  }
}
