import 'package:flutter/cupertino.dart';

class ChangeLanguageProvider extends ChangeNotifier {
  String groupValue = '';
  void checkRadio(String value ) {
      groupValue = value;
      notifyListeners();
  }
}