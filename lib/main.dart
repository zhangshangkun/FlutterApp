import 'package:flutter/material.dart';
import 'view/listv_iews.dart';
import 'view/drawer_left.dart';
import 'view/bottom_navigation_bar.dart';
import 'view/basic_view.dart';
import 'view/layout_view.dart';
import 'view/view_demo.dart';
import 'view/grid_view.dart';
import 'view/sliver_view.dart';
import 'view/navigation_view.dart';
import 'view/form_demo.dart';
import 'view/material_components.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: NavigationView() ,
      initialRoute: "/mdc",
      routes: {
        "/":(context)=>Home(),
        "/about":(context)=>Page(title: "落岑"),
        "/form":(context)=>FormDemo(),
        "/mdc":(context)=>MaterialComponents()
      },
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255,255, 255, 0.5),
          splashColor: Colors.cyanAccent,
          accentColor: Color.fromRGBO(3, 54, 255, 1.0)
      ),
    );
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text("落岑"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => debugPrint("search button is pressed"),
            )
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.red,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.directions_walk)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.directions_bus)),
              Tab(icon: Icon(Icons.directions_railway)),
              Tab(icon: Icon(Icons.delete_forever)),
              Tab(icon: Icon(Icons.departure_board))
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViews(),
            BasicView(),
            LayoutView(),
            ViewDemo(),
            GridViewDemo(),
            SliverView()
            //Icon(Icons.directions_bike, size: 130.0, color: Colors.yellow),
           // Icon(Icons.directions_bike, size: 130.0, color: Colors.yellow)
          ],
        ),
        drawer:LeftDrawer(),
        bottomNavigationBar:BottomNavigtionBars()
      ),
    );
  }
}
