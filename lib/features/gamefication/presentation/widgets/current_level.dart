import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/constant.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';
import '../../../profile/presentation/controller/app_language_provider/app_language_provider.dart';
import '../views/the_levels_view.dart';
class CurrentLevelContainer extends StatelessWidget {
  const CurrentLevelContainer({super.key});
  @override
  Widget build(BuildContext context) {
    var appLanguage = Provider.of<AppLanguage>(context, listen:false );
    return GestureDetector(
      onTap: ()=> Navigator.pushNamed(context, TheLevelsView.id),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 20),
        decoration: BoxDecoration(
          color: AllColors.calTextColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  Assets.imagesCompetition, height: 22, width: 22,),
                const SizedBox(width: 10,),
                Text("$currentLevelDescription ($currentLevel)", style:
                Styles.textStyleSemiBold14(context).copyWith(
                    color: AllColors.mainText)),
              ],
            ),
            const SizedBox(height: 16,),
            Text(
              "${S.of(context).next_level_after} $pointsToCollect${S.of(context).point}",
              style: Styles.textStyleBook14(context).copyWith(color: AllColors.mainText),),
            const SizedBox(height: 12,),
            RotatedBox(
              quarterTurns: appLanguage.locale==const Locale('ar')?2:0 ,
              child: LinearPercentIndicator(
                lineHeight:7,
                percent: 0.33,
                progressColor:AllColors.buttonMainColor,
                backgroundColor: AllColors.linearPercentIndicator ,
                barRadius: const Radius.circular(17) ,
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
