import 'package:flutter/material.dart';
import 'package:mealy/core/common/widgets/custom_app_bar.dart';

import '../../../../core/common/widgets/toggle_button.dart';
import '../../../../generated/l10n.dart';
import '../widgets/coupon_section.dart';
import '../widgets/point_section.dart';

class RewardsView extends StatefulWidget {
  const RewardsView({super.key});

  static String id = "RewardsView";

  @override
  State<RewardsView> createState() => _RewardsViewState();
}

class _RewardsViewState extends State<RewardsView> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
              children: [
                CommonCustomAppBar(title: S.of(context).rewards),
                const SizedBox(
                  height: 50,
                ),
                const PointSection(),
                const SizedBox(
                  height: 30,
                ),
                ToggleButton(
                  current: currentIndex,
                  txt1: S.of(context).exchange,
                  txt2: S.of(context).coupon,
                  onToggle: (i) {
                    setState(() {
                      currentIndex = i!;
                    });
                  },
                ),
                currentIndex == 0
                    ? const SizedBox(height: 30,)
                    : const Expanded(
                      child: CouponSection( noCoupon: false,),
                    ),
              ],
            )

      ),
    ));
  }
}

