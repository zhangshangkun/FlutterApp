import 'package:flutter/material.dart';
class LeftDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture:CircleAvatar(
              backgroundImage: NetworkImage("https://resources.ninghao.org/images/overkill.png"),
            ),
            accountName: Text("落岑",style: TextStyle(fontWeight: FontWeight.bold),),
            accountEmail: Text("zsk559521@163.com"),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                  image: NetworkImage("https://resources.ninghao.org/images/say-hello-to-barry.jpg"),
                  fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.yellow[400].withOpacity(0.4), BlendMode.hardLight)
              )
            ),
          ),
          ListTile(
            leading: Icon(Icons.directions_walk,size: 22.0,color: Colors.red),
            title: Text("跑步"),
            onTap: ()=>Navigator.pop(context),
          ),
          ListTile(
            leading: Icon(Icons.directions_bike,size: 22.0,color: Colors.blue),
            title: Text("骑行"),
            onTap: ()=>Navigator.pop(context),
          )
        ],
      ),
    );
//    return Drawer(
//      child: ListView(
//        padding: EdgeInsets.all(8.0),
//        children: <Widget>[
//          UserAccountsDrawerHeader(
//            currentAccountPicture: CircleAvatar(
//              backgroundImage: NetworkImage("https://resources.ninghao.org/images/overkill.png"),
//            ),
//            accountName: Text("落岑",style:TextStyle(fontWeight: FontWeight.bold)),
//            accountEmail: Text("zsk559521@163.com"),
//            decoration: BoxDecoration(
//              color: Colors.yellow[400],
//              image: DecorationImage(
//                image: NetworkImage("https://resources.ninghao.org/images/say-hello-to-barry.jpg"),
//                fit: BoxFit.cover,
//                colorFilter: ColorFilter.mode(
//                    Colors.yellow[400].withOpacity(0.6),
//                    BlendMode.hardLight
//                ),
//              ),
//            ),
//          ),
//          ListTile(
//            title: Text("我的钱包",textAlign: TextAlign.left),
//            leading: Icon(Icons.watch,size: 22.0,color: Colors.cyan),
//            onTap: ()=>Navigator.pop(context),
//          ),
//          ListTile(
//            leading: Icon(Icons.phone,size: 22.0,color: Colors.cyan),
//            title: Text("我的电话",textAlign: TextAlign.left),
//            onTap: ()=>Navigator.pop(context),
//          ),
//        ],
//      ),
//    );
  }

}