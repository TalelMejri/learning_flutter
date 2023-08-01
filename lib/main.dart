import 'package:flutter/material.dart';

//Exercie 1

// void main() {
//   runApp(MaterialApp(
//     home: Center(
//       child: Text(
//         "Talel Mejri",
//         style: TextStyle(color: Colors.blue, decoration: TextDecoration.none),
//       ),
//     ),
//     debugShowCheckedModeBanner: false,
//   ));
// }

//Exercice 2
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("I AM RICH", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/profile.png'),
            width: 600,
            height: 400,
          ),
        ),
      ),
    ),
  );
}
