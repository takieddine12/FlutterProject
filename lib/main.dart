
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
              child:  ListTile(
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
          appBar: AppBar(  //Appbar
            title: Text("Music Player"),
            bottom: TabBar( //tablayout
              tabs:[
                Tab(text: "Home"),
                Tab(text: "Music"),
                Tab(text: "Videos")
              ],
            ),
          ),
          body: TabBarView( // Tab Contents
            children:[
              Center(
                  child: Row( // row
                    children:[
                      FlatButton(
                        child: Text("Button 1"),
                        splashColor: Colors.red,
                        textColor: Colors.white,
                      ),
                      FlatButton(
                        child: Text("Button 2"),
                        splashColor: Colors.red,
                        textColor: Colors.white,
                      ),
                      FlatButton(
                        child: Text("Button 3"),
                        color: Colors.red,
                        textColor: Colors.white,
                      )
                    ],
                  )
              ),
             Center(
                 child : Container( // container
                   height: 200,
                   width: 200,
                   color: Colors.red
                 )
             ),
             RaisedButton(  //Button with elevation
               child: Text("Click ME"),
               onPressed: (){
                CupertinoAlertDialog( //Alert dialog
                 title: Text("Are you sure you want to quit the app"),
                  actions:[
                    CupertinoDialogAction(child: Text("No"),),
                    CupertinoDialogAction(child: Text("Yes"))
                  ],
                );
              }),
            ],
          ),

        ),
      )
    );
  }
}
