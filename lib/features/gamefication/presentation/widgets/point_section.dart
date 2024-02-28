import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';

class PointSection extends StatelessWidget {
  const PointSection({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Assets.imagesCoinBag,
          width: 36,
          height: 51,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "0 ${S.of(context).point}",
              style: Styles.textStyleBold18(context),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              S.of(context).more_order_more_points,
              style: Styles.textStyleMedium12(context)
                  .copyWith(color: AllColors.descr),
            ),
          ],
        )
      ],
    );
  }
}