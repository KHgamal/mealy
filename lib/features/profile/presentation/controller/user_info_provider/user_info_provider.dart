import 'package:flutter/material.dart';

class UserInfoProvider extends ChangeNotifier {
  String? name;
  String number;
  String? image;
  String? city;
  String email;
  String password;

  UserInfoProvider({
    this.name,
    this.number = "01*********8",
    this.image = "null",
    this.city,
    this.email="kh*****@****.com",
    this.password="**********"
  });
}
