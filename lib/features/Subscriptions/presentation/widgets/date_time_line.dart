import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:provider/provider.dart';

import '../../../profile/presentation/controller/app_language_provider/app_language_provider.dart';

class DateTimeLine extends StatefulWidget {
  const DateTimeLine({super.key, required this.initialDate});

  final DateTime? initialDate;

  @override
  State<DateTimeLine> createState() => _DateTimeLineState();
}

class _DateTimeLineState extends State<DateTimeLine> {
  @override
  Widget build(BuildContext context) {
    Locale locale= Provider.of<AppLanguage>(context).locale;
    return Directionality(
      textDirection:
          locale.languageCode == 'ar' ? TextDirection.rtl : TextDirection.ltr,
      child: EasyDateTimeLine(
        locale: locale.languageCode,
        initialDate: widget.initialDate ?? DateTime.now(),
        headerProps: const EasyHeaderProps(
          showHeader: false,
          showMonthPicker: false,
        ),
        dayProps: EasyDayProps(
          height: 59,
          width: 59,
          dayStructure: DayStructure.dayStrDayNum,
          activeDayStyle: DayStyle(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: AllColors.buttonMainColor,
            ),
            dayNumStyle: Styles.textStyleMedium12(context)
                .copyWith(color: AllColors.calTextColor),
            dayStrStyle: Styles.textStyleMedium12(context)
                .copyWith(color: AllColors.calTextColor),
          ),
          inactiveDayStyle: DayStyle(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: AllColors.gray,
            ),
            dayNumStyle: Styles.textStyleMedium12(context)
                .copyWith(color: AllColors.calTextColor),
            dayStrStyle: Styles.textStyleMedium12(context)
                .copyWith(color: AllColors.calTextColor),
          ),
        ),
      ),
    );
  }
}
