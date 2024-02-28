import 'package:flutter/material.dart';
import 'package:mealy/features/gamefication/presentation/widgets/reward_coupon_container.dart';

import '../../../../core/common/res/styles.dart';
import '../../../../generated/l10n.dart';
import '../views/the_rewards_view.dart';

class CouponGridView extends StatelessWidget {
  const CouponGridView({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 30,
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(
            parent: NeverScrollableScrollPhysics(),
          ),
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                AspectRatio(
                    aspectRatio: 1.5,
                    child: RewardsCouponContainer(
                      onTap: () =>
                          Navigator.pushNamed(context, TheRewardsView.id),
                    )),
                const SizedBox(
                  height: 13,
                ),
                Text(
                  "${S.of(context).purchase_voucher_worth} 100 جنيه",
                  style: Styles.textStyleSemiBold12(context),
                ),
              ],
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 21,
          ),
        ),
      ],
    );
  }
}