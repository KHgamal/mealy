import 'package:flutter/material.dart';

import '../../../../constant.dart';
import '../../../../generated/l10n.dart';

import 'counter_container.dart';

class PointsAndCouponSection extends StatelessWidget {
  const PointsAndCouponSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CounterContainer(
          count: points,
          text: S.of(context).point,
        )),
        const SizedBox(
          width: 16,
        ),
        Expanded(
            child: CounterContainer(
          count: coupon,
          text: S.of(context).coupon,
        )),
      ],
    );
  }
}
