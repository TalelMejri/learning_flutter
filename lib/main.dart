import 'dart:io';
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

  SnackBar snack=SnackBar(
    content:Text("Content Snackbar"),
    action: SnackBarAction(label:"Close" , onPressed: (){}),
    duration: Duration(seconds: 2 ),
    backgroundColor: Colors.black
    );
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
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            backgroundColor: widget.color,
            onPressed: changeColor,child: Icon(Icons.palette,color: Colors.white),
            ),
            bottomNavigationBar: BottomAppBar(
              shape: CircularNotchedRectangle(),
              child: Container(
                height: 50,
                color:widget.color,
                child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                    children: <Widget>
                [
                   IconButton(onPressed:(){
                        ScaffoldMessenger.of(context).showSnackBar(snack);
                   }, icon: Icon(Icons.open_in_browser)),
                     IconButton(onPressed: (){
                     showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title: Text("Important"),
                            content: Text("Test Show Dialog"),
                             actions: <Widget>[
                              ElevatedButton(onPressed: (){
                                   Navigator.of(context).pop();
                                }, child: Icon(Icons.close))
                             ],
                          );
                        });
                     }, icon: Icon(Icons.show_chart))
                ],
              ),
            ),
            ),
    );
  }
}