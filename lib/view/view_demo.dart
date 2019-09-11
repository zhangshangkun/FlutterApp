import 'package:flutter/material.dart';
import 'package:flutter_app/model/post.dart';

class ViewDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(posts[index].imageUrl,fit: BoxFit.cover),
            Text(posts[index].title,style: TextStyle(fontWeight: FontWeight.bold)),
            Text(posts[index].author)
          ],
        ),
      );
//    return Stack(
//      children: <Widget>[
//        SizedBox.expand(
//          child: Image.network(posts[index].imageUrl, fit: BoxFit.cover),
//        ),
//        Positioned(
//          bottom: 8.0,
//          left: 8.0,
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              Text(posts[index].title,
//               style: TextStyle(fontSize: 20.0,color: Colors.indigoAccent,fontWeight: FontWeight.bold)),
//              Text(posts[index].author)
//            ],
//          ),
//        )
//      ],
//    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
      onPageChanged: (currentPage)=>debugPrint("Page:$currentPage"),
    );
  }
}

class PageViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      pageSnapping: false,
      scrollDirection: Axis.horizontal,
      onPageChanged: (currentPage) => debugPrint("page:$currentPage"),
      controller: PageController(
          initialPage: 0, keepPage: false, viewportFraction: 1.0),
      children: <Widget>[
        Container(
          color: Colors.cyanAccent[400],
          alignment: Alignment.center,
          child: Text("李白",
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue)),
        ),
        Container(
          color: Colors.yellow[400],
          alignment: Alignment.center,
          child: Text("小白",
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue)),
        )
      ],
    );
  }
}
