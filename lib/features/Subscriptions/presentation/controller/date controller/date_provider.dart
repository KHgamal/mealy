import 'package:flutter/material.dart';

import '../../../../../core/common/res/colors.dart';

class DateProvider extends ChangeNotifier {
  DateTime dateSelected = DateTime.now();
  bool week=true;
  List<DateTime> selectedDays=[];
  Future<void> selectedDate(BuildContext context) async {
    dateSelected = (await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 1),
      initialDate: dateSelected,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AllColors.buttonMainColor, // <-- SEE HERE
              onPrimary: AllColors.buttonTextColor, // <-- SEE HERE
              onSurface: AllColors.black, // <-- SEE HERE
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: AllColors.buttonMainColor, // button text color
              ),
            ),
          ),
          child: child!,
        );
      },
    ))!;
    notifyListeners();
  }
  addDay(dateSelected){
    selectedDays.add(dateSelected);
    notifyListeners();
  }

}
