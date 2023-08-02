import 'package:learning_flutter/Perosn.dart';
import 'package:learning_flutter/adress_class.dart';

class Employee extends Person {
  double salary;
  Employee(String name, String phone, Address adress, this.salary)
      : super(name, phone, adress);

  String speak(String nom) => "hi ${super.speak(nom)}";
}
