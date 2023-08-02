import 'adress_class.dart';

class Person {
  String? name;
  String? _phone; //private
  Address? adress;

  /*Person(String name, String phone, String adress) {
    this.name = name;
    this._phone = phone;
    this.adress = adress;
  }*/

  Person(this.name, this._phone,
      this.adress); //initializing formals (initialisation formel)

  Person.Kid(this.name);

  String get phone => _phone.toString();

  set phone(String val) {
    _phone = val;
  }
}
