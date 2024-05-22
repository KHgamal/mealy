import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import '../../../../constant.dart';
import '../../../../generated/l10n.dart';
import '../../../payment/presentation/widgets/bottom_sheet.dart';
void calorieBottomSheet(context ,{required bool male, required double weight,
required double height,required double age,required int index}){

 double bmr= male? 10 * weight  + 6.25 * height - 5 * age + 5:
 10 * weight + 6.25 * height - 5 * age - 161;
 switch (index) {
    case 1:
       calorie=bmr*1.375;
      break;
    case 2: 
       calorie=bmr*1.55;
      break;
    case 3: 
       calorie=bmr*1.9;
      break;
     case 4: 
       calorie=bmr*1.2;
      break;  
  }

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
            const BottomSheetHandler(),
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
            Text(calorie.toString(),
              style: Styles.textStyleSemiBold96(context),),
            const SizedBox(height: 24,),
          ],
        ),
      );
    },
  );
}
