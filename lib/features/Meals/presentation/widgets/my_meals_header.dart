import 'package:flutter/material.dart';
import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../generated/l10n.dart';
class MyMealsHeader extends StatelessWidget {
  const MyMealsHeader({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
            S.of(context).my_meals,
            style:Styles.textStyleMedium16(context).copyWith(color:
            AllColors.black)
        ),
        const SizedBox(width: 4),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color:AllColors.buttonBgColor,
              shape: BoxShape.circle
          ),
          child: Center(
            child: Text(
                '5',
                style:Styles.textStyleMedium12(context).copyWith(
                    color: AllColors.buttonMainColor
                )
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        IconButton(onPressed:(){}, icon: Icon(Icons.refresh,
          color: AllColors.buttonMainColor,)),
        Text(
            S.of(context).change_all_meals,
            style:Styles.textStyleMedium16(context).copyWith(color: AllColors.buttonMainColor)
        ),
      ],
    );
  }
}