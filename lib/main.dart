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
        home: MYSatetApp(title:"state"),
      );
  }
}

class MYSatetApp extends StatefulWidget{
  MYSatetApp({super.key,required this.title});
  final String title;

  State<MYSatetApp> createState ()=> _MySatetApp();
}

class _MySatetApp extends State<MYSatetApp>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Center(child: Text("talel"))
        ),
    );
  }
}