import 'package:flutter/material.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../core/common/widgets/button_with_image.dart';
import '../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../generated/l10n.dart';
import '../widgets/coupon_value_row.dart';
import '../widgets/reward_coupon_container.dart';

class TheRewardsView extends StatelessWidget {
  const TheRewardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
          child: SingleChildScrollView(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonCustomAppBar(title: S.of(context).rewards),
                const SizedBox(
                  height: 36,
                ),
                RewardsCouponContainer(
                  height: MediaQuery.sizeOf(context).height * 0.185,
                ),
                const SizedBox(
                  height: 24,
                ),
                const CouponValueRow(),
                const SizedBox(
                  height: 24,
                ),
                ButtonWithImage(
                  txt: S.of(context).reward_rule,
                  onPressed: () {},
                  radius: 9,
                  widget: Icon(
                    Icons.info_outline,
                    color: AllColors.buttonMainColor,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: AllColors.buttonMainColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      S.of(context).This_reward_can_only_be_used_once,
                      style: Styles.textStyleBook16(context).copyWith(
                        color: AllColors.descr,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
