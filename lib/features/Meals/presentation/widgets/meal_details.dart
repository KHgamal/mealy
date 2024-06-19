import 'package:flutter/material.dart';
import 'package:mealy/generated/l10n.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../domain/entities/meals_entity.dart';
class MealDetails extends StatelessWidget {
  const MealDetails({
  super.key, required this.meal,
  });
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(meal.name, style: Styles.textStyleSemiBold14(context)),
        const SizedBox(height:8,),
        Text(meal.restaurant.address, style: Styles.textStyleMedium14(context)),
        const SizedBox(height:8 ,),
        Text.rich(
          TextSpan(text:meal.category.name, style:
          Styles.textStyleMedium14(context).copyWith(color: AllColors.buttonMainColor),
              children: [
                const TextSpan(text:"  🔥 ",),
                TextSpan(text:" ${meal.calories.toString()} ${S.of(context).calory}", style:
                Styles.textStyleMedium14(context),),
              ]
          ),
        ),
      ],
    );
  }
}