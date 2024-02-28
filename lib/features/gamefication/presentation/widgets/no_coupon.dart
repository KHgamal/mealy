import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';

class NoCouponSection extends StatelessWidget {
  const NoCouponSection({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        SvgPicture.asset(
          Assets.imagesGift,
          width: 152,
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          S.of(context).No_coupons_yet,
          style: Styles.textStyleSemiBold16(context)
              .copyWith(color: AllColors.disabledText),
        ),
        const Spacer(
          flex: 2,
        ),
      ],
    );
  }
}