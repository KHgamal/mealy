import 'package:flutter/material.dart';
import 'package:mealy/core/common/widgets/pink_button.dart';
import 'package:mealy/features/payment/presentation/widgets/container_with_arrow.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../generated/l10n.dart';

class AddressContainer extends StatelessWidget {
  const AddressContainer({super.key});

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
              S.of(context).theAddress,
              style: Styles.textStyleSemiBold16(context),
            ),
            const SizedBox(
              height: 10,
            ),
            ContainerWithArrow(
              image: 'assets/images/address-icon.svg',
              title: S.of(context).chooseFromYourAddresses,
              icon: Icons.keyboard_arrow_down_outlined,
              textColor: AllColors.descr,
            ),
            const SizedBox(
              height: 10,
            ),
            PinkButton(
              txt: S.of(context).newAddress,
              onPressed: () {},
              radius: 12,
              border: true,
            )
          ],
        ),
      ),
    );
  }
}
