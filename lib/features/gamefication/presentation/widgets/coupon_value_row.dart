import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/styles.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../generated/l10n.dart';

class CouponValueRow extends StatelessWidget {
  const CouponValueRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${S.of(context).purchase_voucher_worth} 100 ${S.of(context).pound}",
          style: Styles.textStyleSemiBold14(context),
        ),
        Row(
          children: [
            const Icon(Icons.copy_outlined),
            const SizedBox(
              width: 5,
            ),
            Text(
              "Chaggdhhdsji",
              style: Styles.textStyleBook16(context)
                  .copyWith(color: AllColors.mainText),
            ),
          ],
        )
      ],
    );
  }
}
