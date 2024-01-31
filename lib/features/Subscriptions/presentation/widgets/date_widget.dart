import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/generated/assets.dart';

import '../../../../core/common/widgets/button_with_image.dart';
import '../../../../generated/l10n.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({super.key});

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
            height: 35,
            txt: S.of(context).changeDate,
            widget: AspectRatio(
              aspectRatio: 1,
              child: SvgPicture.asset(
                Assets.imagesCalendar,
                fit: BoxFit.fill,
              ),
            ),
            /*Icon(
              Icons.calendar_month_outlined,
              color: AllColors.buttonMainColor,
            ),*/
            //width: MediaQuery.sizeOf(context).width * 0.314,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
