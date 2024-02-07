import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../core/common/widgets/common_button.dart';
import '../../../../core/common/widgets/text_field.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';

class CouponContainer extends StatelessWidget {
  const CouponContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: AllColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).discountCoupon,
              style: Styles.textStyleSemiBold16(context),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.6133,
                  child: CustomTextField(
                    hintText: S.of(context).couponCode,
                    prefixIcon: SvgPicture.asset(Assets.imagesTicketDiscount),
                    height: 48,
                    fillColor: AllColors.tfFill,
                  ),
                ),
                CommonButton(
                  txt: S.of(context).apply,
                  onPressed: () {},
                  radius: 12,
                  width: MediaQuery.sizeOf(context).width * 0.205,
                  high: 48,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
