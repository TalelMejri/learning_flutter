import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: const MyHomePage(title: "online shopping"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  Icon heard = Icon(
    Icons.favorite,
    color: Colors.white,
  );
  bool cliqued = false;
  void Dothis() {
    print("tetts");
    setState(() {
      if (cliqued == false) {
        heard = Icon(
          Icons.favorite,
          color: Colors.white,
        );
        cliqued = true;
      } else {
        heard = Icon(
          Icons.favorite_border,
          color: Colors.white,
        );
        cliqued = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text(
          "Hello",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[IconButton(onPressed: Dothis, icon: heard)],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: Dothis,
        child: heard,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, //Location for floatingActionButton
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(), //make bottomAppBar shape
        color: Colors.indigoAccent,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
