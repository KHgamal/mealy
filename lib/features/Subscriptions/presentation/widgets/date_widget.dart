import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/generated/assets.dart';
import 'package:provider/provider.dart';

import '../../../../core/common/widgets/button_with_image.dart';
import '../../../../generated/l10n.dart';
import '../../../profile/presentation/controller/app_language_provider/app_language_provider.dart';
import '../controller/date controller/date_provider.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({super.key});
  //static dynamic dateSelected;
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
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.46933333333,
                height: 17,
                child: FittedBox(
                  alignment: Alignment.topRight,
                  fit: BoxFit.scaleDown,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: S.of(context).SubscriptionStartsFrom,
                          style: Styles.textStyleSemiBold14(context),
                        ),
                        TextSpan(
                          text:' ( ${DateFormat.MMMMd( Provider.of<AppLanguage>(context).locale ==
                              const Locale('en')?"en_US":'ar_SA').format
                            (Provider.of<DateProvider>(context). dateSelected)} )',
                          style: Styles.textStyleSemiBold14(context).copyWith(
                            color: AllColors.buttonMainColor,
                          ),
                        ),
                      ],
                    ),
                  ),
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
              Provider.of<DateProvider>(context, listen: false)
                  .selectedDate(context);
              //selectedDate(context);
            },
          ),
        ],
      ),
    );
  }
}
