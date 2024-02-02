import 'package:flutter/material.dart';

import '../../../../constant.dart';
import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
class MealDetails extends StatelessWidget {
  const MealDetails({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(mealsDetailsList[0].mealTitle, style: Styles.textStyleSemiBold14(context)),
        const SizedBox(height:8,),
        Text(mealsDetailsList[0].address, style: Styles.textStyleMedium14(context)),
        const SizedBox(height:8 ,),
        Text.rich(
          TextSpan(text:mealsDetailsList[0].category, style:
          Styles.textStyleMedium14(context).copyWith(color: AllColors.buttonMainColor),
              children: [
                const TextSpan(text:"  🔥 ",),
                TextSpan(text:mealsDetailsList[0].calories, style:
                Styles.textStyleMedium14(context),),
              ]
          ),
        ),
      ],
    );
  }
}