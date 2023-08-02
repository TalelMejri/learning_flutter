import 'package:learning_flutter/adress_class.dart';

import 'Perosn.dart';

class User extends Person {
  String login;
  String password;

  User(String name, String phone, Address adress, this.login, this.password)
      : super(name, phone, adress);
}
