
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: Drawer(
              child: ListTile(
                title: Text('Item 1'),
                onTap: () {
                     SnackBar(
                       content : Row(
                         children:[
                          Expanded(
                            child : Text("Snack Bar")
                          )
                         ],
                       )
                     );
                },
              )
          ),
          appBar: AppBar(
            title: Text("Music Player"),
            bottom: TabBar(
              tabs:[
                Tab(text: "Home"),
                Tab(text: "Music"),
                Tab(text: "Videos")
              ],
            ),
          ),
          body: TabBarView(
            children:[
              Image.network("https://cdn.pixabay.com/photo/2017/03/13/10/25/hummingbird-2139279__340.jpg",
              fit: BoxFit.cover),
              Image.network("https://cdn.pixabay.com/photo/2018/07/14/15/27/cafe-3537801__340.jpg",
              fit: BoxFit.cover),
              Image.network("https://cdn.pixabay.com/photo/2019/02/04/20/07/flowers-3975556__340.jpg",
              fit: BoxFit.cover)
            ],
          ),

        ),
      )
    );
  }
}
