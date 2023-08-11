import 'dart:math';

import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "RevFlutter",
      theme: ThemeData(primaryColor: Colors.indigo),
      home: MyHomeApp(title:"hello",color:Colors.red),
    );
  }
}
class MyHomeApp extends StatefulWidget{
  MyHomeApp({super.key,required this.title,required this.color});
  final String title;
  Color color;
  State<MyHomeApp> createState()=>_MyHomeApp();
}

class _MyHomeApp extends State<MyHomeApp>{

  int red=0;
  int green=0;
  int blue=0;

  ChangerColor(){
    red=Random.secure().nextInt(255);
    blue=Random.secure().nextInt(255);
    green=Random.secure().nextInt(255);
    setState(() {
      widget.color=Color.fromRGBO(red, green, blue,1);
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Center(
          child: Text("AppFlutter",style: TextStyle(fontSize: 20)),
        ),
        actions: <Widget>[
           IconButton(onPressed: null, icon: Icon(Icons.home,color: widget.color))
        ],
      ),
      body: Center(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   Text("Chose Your Color"),
                   Container(
                    color: widget.color,
                    width: MediaQuery.of(context).size.width*0.8,
                    height:MediaQuery.of(context).size.height*0.13,
                    child: Center(child: Text("R(${widget.color.red})G(${widget.color.green})B(${widget.color.blue})",
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white))),
                   )
                ],
              ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: ChangerColor,
                child: Icon(Icons.change_circle_rounded),backgroundColor: widget.color
                ),
              drawer: Drawer(backgroundColor: widget.color,child: Column(children:const <Widget>[
                 DrawerHeader(
                  child: Text("Header")),
                 Text("item1"),
                 Text("item1"),
                 Text("item1"),
              ]),),
    );
  }
}