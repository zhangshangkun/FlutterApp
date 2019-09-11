import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
             //title:Text("落岑"),
             floating: true,
             expandedHeight: 280.0,
             flexibleSpace:FlexibleSpaceBar(
                 title: Text("落岑".toUpperCase(),style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 30.0,
                   letterSpacing: 2.0)
                 ),
               background: Image.network("https://resources.ninghao.org/images/say-hello-to-barry.jpg",fit: BoxFit.cover),
             ),
          ),
          SliverSafeArea(
              sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverListDemo(),
          ))
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              child: Stack(
                children: <Widget>[
                  Image.network(posts[index].imageUrl),
                  Positioned(
                      bottom: 15.0,
                      left: 20.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(posts[index].title,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent)),
                          Text(posts[index].author)
                        ],
                      ))
                ],
              ),
            ));
      }, childCount: posts.length),
    );
  }
}

class SliverViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 1.0),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          child: Image.network(posts[index].imageUrl),
        );
      }, childCount: posts.length),
    );
  }
}
