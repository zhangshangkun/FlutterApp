import 'package:flutter/material.dart';

class LayoutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//      child: Row(
//           children: <Widget>[
//             IconBadge(Icons.directions_walk),
//             IconBadge(Icons.directions_bike),
//             IconBadge(Icons.directions_bus)
//           ],
//      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 200.0,
              maxWidth: 200.0
            ),
          ),
          AspectRatio(
            aspectRatio: 16.0 / 9.0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://resources.ninghao.org/images/say-hello-to-barry.jpg")),
              ),
            ),
          )
//           IconBadge(Icons.directions_walk),
//           IconBadge(Icons.directions_bike),
//           IconBadge(Icons.directions_bus)
        ],
      ),
    );
    return Column(
      children: <Widget>[IconBadge(Icons.directions_bike, size: 100.0)],
    );
  }
}

class StackView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        SizedBox(
          child: Container(
            width: 200.0,
            height: 300.0,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(16.0)),
            child: Icon(Icons.directions_bus, size: 50.0, color: Colors.red),
          ),
        ),
        SizedBox(
          child: Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(23, 255, 255, 1.0),
                borderRadius: BorderRadius.circular(16.0)),
            child: Icon(Icons.directions_walk, size: 50.0, color: Colors.red),
          ),
        )
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 30.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.lightGreen),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
