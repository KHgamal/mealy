import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:provider/provider.dart';

import '../../../profile/presentation/controller/app_language_provider/app_language_provider.dart';
import '../controller/date controller/date_provider.dart';

class DateTimeLine extends StatelessWidget {
  const DateTimeLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Locale locale = Provider.of<AppLanguage>(context).locale;
    return Directionality(
      textDirection:
          locale.languageCode == 'ar' ? TextDirection.rtl : TextDirection.ltr,
      child: EasyDateTimeLine(
        locale: locale.languageCode,
        initialDate:
            Provider.of<DateProvider>(context, listen: false).dateSelected,
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
