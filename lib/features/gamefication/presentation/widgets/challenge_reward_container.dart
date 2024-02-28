import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/generated/assets.dart';

class ChallengeAndRewardContainer extends StatelessWidget {
  const ChallengeAndRewardContainer({super.key, required this.text,required this.onTap});
final String text;
final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AllColors.calTextColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SvgPicture.asset(Assets.imagesCompetition , height: 37,width: 37,),
            const SizedBox(height: 10,),
            Text(text , style: Styles.textStyleSemiBold16(context).copyWith(color:
            AllColors.black),)
          ],
        ),
      ),
    );
  }
}
