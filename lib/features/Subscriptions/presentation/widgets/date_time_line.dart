import 'package:flutter/material.dart';
import 'package:intl/intl.dart' hide TextDirection;

import 'package:mealy/core/common/res/colors.dart';
import 'package:provider/provider.dart';

import '../../../profile/presentation/controller/app_language_provider/app_language_provider.dart';
import '../controller/date controller/date_provider.dart';
import 'date_container.dart';

class DateTimeLine extends StatelessWidget {
  const DateTimeLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    DateTime dateSelected = Provider.of<DateProvider>(context).dateSelected;
    final lastDayOfMonth = DateTime(dateSelected.year, dateSelected.month + 1, 0);
    Locale locale = Provider.of<AppLanguage>(context).locale;
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.1,
      child: Directionality(
        textDirection:
            locale.languageCode == 'ar' ? TextDirection.rtl : TextDirection.ltr,
        child:ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount:Provider.of<DateProvider>(context).week ? 7:lastDayOfMonth.day,
          itemBuilder: (context, index) {
            return DateContainer(
              onTap: ()=> Provider.of<DateProvider>(context,listen: false ).addDay(
                  DateTime(dateSelected.year,dateSelected.month,
                      dateSelected.day+index)
              ),
              color: Provider.of<DateProvider>(context).selectedDays.contains(
                  DateTime(dateSelected.year,dateSelected.month, dateSelected.day+index))
                  ? AllColors.buttonMainColor: AllColors.gray,
              day:DateFormat.E(locale == const Locale('en')?"en_US":'ar_SA').
              format(DateTime(dateSelected.year,dateSelected.month,
                  dateSelected.day+index)), //+index
              date:DateFormat.d(locale == const Locale('en')?"en_US":'ar_SA').
              format(DateTime(dateSelected.year,dateSelected.month,
                  dateSelected.day+index)),
            ) ;
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width:12,
            );
          },
        ),
      ),
    );
  }
}
