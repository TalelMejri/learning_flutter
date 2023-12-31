import 'package:flutter/material.dart';
import 'package:learning_flutter/Employee.dart';
import 'package:learning_flutter/adress_class.dart';

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
/*void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Center(
              child: Text("I AM RICH", style: TextStyle(color: Colors.white))),
          backgroundColor: Colors.black,
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
*/
import 'Perosn.dart';

void main() {
  Address adresse = Address(1, "45", "dsd", "15");
  Person father = Person("talel", "290333", adresse);
  print(father.name);
  father.name = "dsd";
  Person son = Person.Kid("Hama");

  print(son.name);

  Employee developer = Employee("talel", "222", adresse, 3000);
  print(developer.adress?.houseNumber);

  print(
      "Developer's name : ${developer.name.toString().toUpperCase()} and he's paied ${developer.salary}dt");

  print(developer.speak("mejri"));
}
