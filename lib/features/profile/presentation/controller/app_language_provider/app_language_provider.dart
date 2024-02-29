import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppLanguage extends ChangeNotifier {
  Locale locale = const Locale('ar');

  Locale get appLocal => locale ?? const Locale("ar");
  fetchLocale() async {
    var prefs = await SharedPreferences.getInstance();
    if (prefs.getString('language_code') == null) {
      locale =const Locale('ar');
      return Null;
    }
    locale = Locale(prefs.getString('language_code')!);
    return Null;
  }

  void changeLanguage(Locale type) async {
    var prefs = await SharedPreferences.getInstance();
    if (locale == type) {
      return;
    }
    if (type == const Locale("ar")) {
      locale = const Locale("ar");
      await prefs.setString('language_code', 'ar');
      await prefs.setString('countryCode', '');
    } else {
      locale = const Locale("en");
      await prefs.setString('language_code', 'en');
      await prefs.setString('countryCode', 'US');
    }
    notifyListeners();
  }
}