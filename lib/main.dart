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

  int counter = 0;
  void increment() {
    setState(() {
      this.counter++;
    });
  }

  String display = "0:Home View";
  int selectIndex = 0;

  void cliquedItem(int index) {
    setState(() {
      selectIndex = index;
      switch (index) {
        case 0:
          {
            display = "${selectIndex} : Home View";
          }
          break;
        case 1:
          {
            display = "${selectIndex} : Account View";
          }
          break;
        case 2:
          {
            display = "${selectIndex} : Setting View";
          }
          break;
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${display}',
              style: TextStyle(color: Colors.indigoAccent, fontSize: 40),
            ),
            Text(
              "This Counter ${counter} ",
              style: TextStyle(color: Colors.red, fontSize: 25),
            ),
            IconButton(
              onPressed: increment,
              icon: Icon(Icons.plus_one),
              color: Colors.black,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: Dothis,
        child: heard,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .endFloat, //Location for floatingActionButton
      // bottomNavigationBar: BottomAppBar(
      //   shape: CircularNotchedRectangle(), //make bottomAppBar shape
      //   color: Colors.indigoAccent,
      //   child: Container(
      //     height: 50,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: <Widget>[
      //         IconButton(
      //           onPressed: null,
      //           icon: Icon(
      //             Icons.home,
      //             color: Colors.white,
      //           ),
      //         ),
      //         IconButton(
      //           onPressed: null,
      //           icon: Icon(
      //             Icons.arrow_back,
      //             color: Colors.white,
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.indigoAccent,
          currentIndex: selectIndex,
          onTap: cliquedItem,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_balance,
                  color: Colors.white,
                ),
                label: "Account"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                label: "Setting")
          ]),
    );
  }
}
