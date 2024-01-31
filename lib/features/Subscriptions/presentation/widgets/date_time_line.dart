import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';

class DateTimeLine extends StatelessWidget {
  const DateTimeLine({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyDateTimeLine(
      initialDate: DateTime.now(),
      dayProps: EasyDayProps(
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
    );
  }
}
