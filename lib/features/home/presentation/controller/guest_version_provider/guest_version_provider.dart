import 'package:flutter/cupertino.dart';

class GuestProvider extends ChangeNotifier {
  bool guest = false;
 void isGuest(){
   guest=true;
   notifyListeners();
 }
}