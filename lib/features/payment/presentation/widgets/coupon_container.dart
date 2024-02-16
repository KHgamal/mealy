import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../core/common/widgets/common_button.dart';
import '../../../../core/common/widgets/snack_bar.dart';
import '../../../../core/common/widgets/text_field.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';

class CouponContainer extends StatefulWidget {
  const CouponContainer({super.key});

  @override
  State<CouponContainer> createState() => _CouponContainerState();
}

class _CouponContainerState extends State<CouponContainer> {
  final formKey = GlobalKey<FormState>();
  TextEditingController couponController = TextEditingController();

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
            Form(
              key: formKey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.6133,
                    child: CustomTextField(
                      controller: couponController,
                      hintText: S.of(context).couponCode,
                      prefixIcon: SvgPicture.asset(Assets.imagesTicketDiscount),
                      height: 48,
                      fillColor: AllColors.tfFill,
                    ),
                  ),
                  CommonButton(
                    txt: S.of(context).apply,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                      } else {
                        showSnackBar(context, S.of(context).field_is_required);
                      }
                    },
                    radius: 12,
                    width: MediaQuery.sizeOf(context).width * 0.205,
                    high: 48,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
