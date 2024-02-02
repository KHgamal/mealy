import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/core/common/widgets/white_button.dart';
import 'package:mealy/features/Subscriptions/data/models/meal_info_model.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/widgets/common_button.dart';
import '../../../../generated/l10n.dart';

class MealInfoAlertDialog extends StatelessWidget {
  const MealInfoAlertDialog({super.key, required this.mealInfo});

  final MealInfoModel mealInfo;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      backgroundColor: AllColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            AspectRatio(
              aspectRatio: 343 / 222,
              child: Image.asset(
                mealInfo.image,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              mealInfo.title,
              style: Styles.textStyleMedium16(context)
                  .copyWith(color: AllColors.black),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              mealInfo.subTitle,
              style: Styles.textStyleMedium14(context)
                  .copyWith(color: AllColors.descr),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AlertItem(title: 'دهون', subTitle: mealInfo.fat),
                const SizedBox(
                  width: 15,
                ),
                AlertItem(title: 'كربوهيدرات', subTitle: mealInfo.carbo),
                const SizedBox(
                  width: 15,
                ),
                AlertItem(title: 'سعر حرارى', subTitle: mealInfo.calory),
                const SizedBox(
                  width: 15,
                ),
                AlertItem(title: 'بروتين', subTitle: mealInfo.protine),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            mealInfo.chosen
                ? CommonButton(
                    onPressed: () {},
                    txt: S.of(context).chosen,
                    radius: 8,
                    width: MediaQuery.sizeOf(context).width * 0.744,
                    high: 49,
                  )
                : WhiteButton(
                    txt: S.of(context).chooceTheMeal,
                    onPressed: () {},
                    high: 49,
                    width: MediaQuery.sizeOf(context).width * 0.744,
                    radius: 8,
                    style: Styles.textStyleMedium12(context),
                  ),
            const SizedBox(
              height: 40,
            ),
            /* const SizedBox(
              height: 26,
            ),
            Text(
              widget.mealInfo.title,
              style: Styles.textStyleMedium16(context)
                  .copyWith(color: AllColors.black),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.mealInfo.subTitle,
              style: Styles.textStyleMedium14(context)
                  .copyWith(color: AllColors.descr),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 118,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return AlertItem(
                      title: title[index], subTitle: subTitle[index]);
                },
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}

class AlertItem extends StatelessWidget {
  const AlertItem({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/images/mealInfo.svg'),
        const SizedBox(
          height: 14,
        ),
        Text(
          title,
          style: Styles.textStyleMedium16(context)
              .copyWith(color: AllColors.mainText),
          textAlign: TextAlign.center,
        ),
        Text(
          subTitle,
          style: Styles.textStyleMedium16(context)
              .copyWith(color: AllColors.mainText),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
