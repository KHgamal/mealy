import 'package:flutter/material.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/common/widgets/pink_button.dart';
import '../../../../generated/l10n.dart';
import 'meal_details.dart';
class MealsDetailsContainer extends StatelessWidget {
  const MealsDetailsContainer({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin:const EdgeInsets.only(top: 36.5),
      padding:const EdgeInsets.only(top:50, right: 8 , left: 8,bottom: 20 ) ,
      decoration: BoxDecoration(
          color: AllColors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MealDetails(),
          const SizedBox(height:20,),
          Row(
            children: [
              Expanded(
                  child: PinkButton(txt:S.of(context).change_meal, onPressed: (){}, radius: 8)),
              const SizedBox(width:15,),
              Expanded(
                  child: CustomButton(onPressed: (){},txt: S.of(context).day_off,
                  ))
            ],
          )
        ],
      ),
    );
  }
}