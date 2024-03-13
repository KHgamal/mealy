import 'package:flutter/material.dart';

class UserInfoProvider extends ChangeNotifier {
  String? name;
  String? number;
  String? image;
  String? city;

  UserInfoProvider({
    this.name = '',
    this.number = "01*********8",
    this.image =
        "https://drive.google.com/file/d/1KGoI-RSPy2uoQVaVNGPPcRwy-GEiJXIO/view?usp=drive_link",
    this.city = '',
  });
}
