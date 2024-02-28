import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/generated/assets.dart';

import '../../../../core/common/widgets/button_with_image.dart';
import '../../../../generated/l10n.dart';

class DateWidget extends StatefulWidget {
  const DateWidget({super.key});
  static var dateSelected;
  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: S.of(context).SubscriptionStartsFrom,
                      style: Styles.textStyleSemiBold14(context),
                    ),
                    TextSpan(
                      text: '( 05 ديسمبر)',
                      style: Styles.textStyleSemiBold14(context).copyWith(
                        color: AllColors.buttonMainColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                'صحى 5 ايام',
                style: Styles.textStyleMedium14(context)
                    .copyWith(color: AllColors.descr),
              ),
            ],
          ),
          ButtonWithImage(
            radius: 9,
            // height: 35,
            width: MediaQuery.sizeOf(context).width * 0.31466666666,
            txt: S.of(context).changeDate,
            widget: SvgPicture.asset(
              Assets.imagesCalendar,
              fit: BoxFit.fill,
            ),
            /*Icon(
              Icons.calendar_month_outlined,
              color: AllColors.buttonMainColor,
            ),*/
            //width: MediaQuery.sizeOf(context).width * 0.314,
            onPressed: () {
              setState(() {
                selectedDate(context);
              });
            },
          ),
        ],
      ),
    );
  }

  Future<void> selectedDate(BuildContext context) async {
    DateWidget.dateSelected = await showDatePicker(
        context: context,
        firstDate: DateTime.now(),
        lastDate: DateTime(DateTime.now().year + 1),
        initialDate: DateWidget.dateSelected ?? DateTime.now(),
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
                  foregroundColor:
                      AllColors.buttonMainColor, // button text color
                ),
              ),
            ),
            child: child!,
          );
        });
  }
}
