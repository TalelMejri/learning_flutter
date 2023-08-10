import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(StateAPP());
}

class StateAPP extends StatelessWidget{
  StateAPP({super.key});
  @override
  Widget build(BuildContext context){
    return
      MaterialApp(
        title: "homme",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: MYSatetApp(title:"state",color: Colors.red),
      );
  }
}

class MYSatetApp extends StatefulWidget{
  MYSatetApp({super.key,required this.title,required this.color});

  Color color;
  final String title;

  State<MYSatetApp> createState ()=> _MySatetApp();
}

class _MySatetApp extends State<MYSatetApp>{


  int _red=0;
  int _green=0;
  int _blue=0;

  changeColor(){
    this._red=Random.secure().nextInt(255);
    this._green=Random.secure().nextInt(255);
    this._blue=Random.secure().nextInt(255);
    setState((){
      widget.color=Color.fromRGBO(this._red, this._green, this._blue, 1);
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title:Center(child: Text("talel"))
        ),
        body: Center(
          child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("chose You Color APPbAR"),
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                height: MediaQuery.of(context).size.height*0.13,
                color: widget.color,
                child: Center(child: 
                    Text("R(${widget.color.red}), G(${widget.color.green}) , B(${widget.color.blue})",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    
                ),
              )
            ],
          ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: widget.color,
            onPressed: changeColor,child: Icon(Icons.palette,color: Colors.white),
            ),
    );
  }
}