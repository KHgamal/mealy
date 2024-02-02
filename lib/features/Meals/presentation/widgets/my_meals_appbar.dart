import 'package:flutter/material.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../generated/l10n.dart';
class MyMealsAppbar extends StatelessWidget {
  const MyMealsAppbar({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.arrow_back, color: AllColors.darkGray,size: 26,),
        const SizedBox(width: 12),
        Text(
            S.of(context).my_meals,
            style:Styles.textStyleSemiBold20(context).copyWith(color:AllColors.darkGray)
        ),
      ],
    );
  }
}