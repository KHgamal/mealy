import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import '../../../../constant.dart';
import '../../../../generated/l10n.dart';
void calorieBottomSheet(context){
  showModalBottomSheet<void>(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(topLeft:Radius.circular(16),
          topRight: Radius.circular(16)),
    ),
    useSafeArea: true,
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(16,16,16,40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 8,
              width: 73,
              decoration: BoxDecoration(
                color: AllColors.gray,
                borderRadius: BorderRadius.circular(100)
              ),
            ),
            const SizedBox(height: 24,),
            Text(S.of(context).Daily_calories ,
            style: Styles.textStyleSemiBold16(context),),
            const SizedBox(height: 8,),
            SizedBox(
              width: 211,
              child: Text(S.of(context).optimal_calorie_during_the_day , style: Styles.textStyleBook14(context)
                  .copyWith(color: AllColors.subtitleColor),textAlign:TextAlign.center),
            ),
            const SizedBox(height: 24,),
            Text(calorie,
              style: Styles.textStyleSemiBold96(context),),
            const SizedBox(height: 24,),
          ],
        ),
      );
    },
  );
}
