import 'package:flutter/material.dart';
import 'package:sweden_embassy/home.dart';
import 'package:sweden_embassy/teledoc.dart';
import 'package:sweden_embassy/registry.dart';
import 'package:sweden_embassy/posts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String,WidgetBuilder>{
        "/teledoc":(BuildContext context)=> new Telepage(),
        "/registry":(BuildContext context)=> new Regpage(),
        "/posts":(BuildContext context)=> new Postpage(),
        "/home":(BuildContext context)=> new Homepage(),
      },
      home: DefaultTabController(length: 4,
          child:Scaffold(
              appBar:
              PreferredSize(child:  AppBar(
                backgroundColor: Colors.white,
                title: Text('ALCHEMY',style:TextStyle(color: Colors.deepOrange) ),
                leading: IconButton(icon: Icon(Icons.new_releases),iconSize: 30,color: Colors.red, onPressed: (){}),
                centerTitle: true,
                actions: <Widget>[
                  new IconButton(
                    icon: new Icon(
                      Icons.favorite,
                      color: Colors.pink,
                    ),iconSize: 30,onPressed: (){},
                  ),
                ],
    bottom: TabBar(
        tabs: [
      Tab(icon: Icon(Icons.home,color: Colors.lightGreen,size: 30,),
        child: Text('HOME',style: TextStyle(color: Colors.black,fontSize: 10),),),
      Tab(icon: Icon(Icons.chat,color: Colors.lightGreen,size: 30,),
        child: Text('TELEDOC',style: TextStyle(color: Colors.black,fontSize: 8),),),
      Tab(icon: Icon(Icons.create,color: Colors.lightGreen,size: 30,),
        child: Text('REGISTRY',style: TextStyle(color: Colors.black,fontSize: 8),),),
      Tab(icon: Icon(Icons.announcement,color: Colors.lightGreen,size: 30,),
        child: Text('POSTS',style: TextStyle(color: Colors.black,fontSize: 10),),),

    ]),
          ),

       preferredSize: Size.fromHeight(120.0),       ),
            body: TabBarView(children: <Widget>[
              new Homepage(),
              new Telepage(),
              new Regpage(),
              new Postpage(),
            ]),

            bottomNavigationBar:SizedBox(height: 78,child: BottomNavigationBar(

                items: [
              BottomNavigationBarItem(
                  icon:IconButton(icon: Icon(Icons.location_on),color: Colors.lightGreen,iconSize: 20,onPressed: (){},),
                title: Text('Near',),),
              BottomNavigationBarItem(
                  icon:IconButton(icon: Icon(Icons.search),color: Colors.lightGreen,iconSize: 20,onPressed: (){},),
                title: Text("Exprole"),),
              BottomNavigationBarItem(
                   icon:IconButton(icon: Icon(Icons.shopping_cart),color: Colors.lightGreen,iconSize: 20,onPressed: (){},),
                title: Text('Cart'),),
              BottomNavigationBarItem(
                    icon:IconButton(icon: Icon(Icons.account_circle),color: Colors.lightGreen,iconSize: 20,onPressed: (){},),
                title: Text('Account'),),

                ] ),)
          ) ),

      );

  }
}


