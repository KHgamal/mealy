import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/core/common/widgets/common_button.dart';
import 'package:mealy/generated/l10n.dart';

import '../../../../core/common/res/colors.dart';

class AmountContainer extends StatelessWidget {
  const AmountContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: AllColors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 24),
        child: Column(
          children: [
            PriceRow(
              title: S.of(context).packagePrice,
              price: '200 جنيه',
              style: Styles.textStyleBook16(context)
                  .copyWith(color: AllColors.mainText),
            ),
            const SizedBox(
              height: 10,
            ),
            PriceRow(
              title: S.of(context).couponDiscount,
              price: '-20 جنيه',
              style: Styles.textStyleBook16(context)
                  .copyWith(color: AllColors.buttonMainColor),
            ),
            const SizedBox(
              height: 10,
            ),
            PriceRow(
              title: S.of(context).totalAmount,
              price: '180 جنيه',
              style: Styles.textStyleMedium16(context)
                  .copyWith(color: AllColors.mainText),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(S.of(context).thePriceIncludeTaxAndDelivery),
            ),
            const SizedBox(
              height: 10,
            ),
            CommonButton(
              txt: S.of(context).confirmAndPay,
              onPressed: () {},
              radius: 12,
              high: 43,
              style: Styles.textStyleMedium16(context).copyWith(
                color: AllColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PriceRow extends StatelessWidget {
  const PriceRow(
      {super.key,
      required this.title,
      required this.price,
      required this.style});
  final String title;
  final String price;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: style,
        ),
        Text(
          price,
          style: style,
        ),
      ],
    );
  }
}
