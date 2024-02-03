import 'package:flutter/material.dart';
import 'package:mealy/features/payment/presentation/widgets/container_with_arrow.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';

class PaymentContainer extends StatelessWidget {
  const PaymentContainer({
    super.key,
  });

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
              S.of(context).thePayment,
              style: Styles.textStyleSemiBold16(context),
            ),
            const SizedBox(
              height: 10,
            ),
            ContainerWithArrow(
              image: Assets.imagesMastercardPayment,
              title: S.of(context).payingWithCardName,
              icon: Icons.arrow_forward_ios_outlined,
              textColor: AllColors.mainText,
            ),
          ],
        ),
      ),
    );
  }
}
