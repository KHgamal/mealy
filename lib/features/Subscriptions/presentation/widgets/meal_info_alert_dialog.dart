import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/core/common/widgets/white_button.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/widgets/common_button.dart';
import '../../../../generated/l10n.dart';
import '../../../Meals/domain/entities/meals_entity.dart';
import '../../../payment/presentation/views/delivery_and_payment_view.dart';

class MealInfoAlertDialog extends StatelessWidget {
  const MealInfoAlertDialog({super.key, required this.meal, required this.chosen, });
final Meal meal;
final bool chosen;
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
              child: Image.network(
               "http://meallyapp.runasp.net/${meal.pictureUrl}",
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              meal.name,
              style: Styles.textStyleMedium16(context)
                  .copyWith(color: AllColors.black),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0),
              child: Text(
                meal.components,
                style: Styles.textStyleMedium14(context)
                    .copyWith(color: AllColors.descr),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
               // mainAxisSize: MainAxisSize.min,
                children: [
                  AlertItem(title: S.of(context).fats, subTitle:"24"),
                  const SizedBox(
                    width: 15,
                  ),
                  AlertItem(title: S.of(context).carbo, subTitle: "24"),
                  const SizedBox(
                    width: 15,
                  ),
                  AlertItem(
                      title: S.of(context).calory, subTitle: "24"),
                  const SizedBox(
                    width: 15,
                  ),
                  AlertItem(
                      title: S.of(context).protein, subTitle: "24"),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            chosen
                ? CommonButton(
                    onPressed: ()=>Navigator.of(context, rootNavigator: true).pushNamed(DeliveryAndPaymentView.id),
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
    return Flexible(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/mealInfo.svg',height: 60,),
          const SizedBox(
            height: 14,
          ),
          FittedBox(child:
          Text(
            title,
            style: Styles.textStyleMedium16(context)
                .copyWith(color: AllColors.mainText),
            textAlign: TextAlign.center,
          ),),
          Text(
            subTitle,
            style: Styles.textStyleMedium16(context)
                .copyWith(color: AllColors.mainText),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
