import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../generated/assets.dart';

class RewardsCouponContainer extends StatelessWidget {
  const RewardsCouponContainer({super.key, this.height, this.onTap});

  final double? height;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: AllColors.otpBg,
        ),
        height: height,
        child: Center(
          child: SvgPicture.asset(Assets.imagesCoinBag , width: 36,height: 51,),
        ),
      ),
    );
  }
}
