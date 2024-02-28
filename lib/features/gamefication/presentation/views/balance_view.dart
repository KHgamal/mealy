import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/widgets/button_with_image.dart';
import 'package:mealy/generated/l10n.dart';

import '../widgets/balance_header.dart';
import '../widgets/challenges_and_rewards_section.dart';
import '../widgets/current_level.dart';
import '../widgets/invite_friend_container.dart';
import '../widgets/points_and_coupon_section.dart';
class BalanceView extends StatelessWidget {
  const BalanceView({super.key});
  static String id = "BalanceView";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: ListView(
         children:const [
           BalanceHeader(),
           SizedBox(height: 20,),
           BalanceBody()
         ],
      ) ,
    ));
  }
}

class BalanceBody extends StatelessWidget {
  const BalanceBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 16),
     child: Column(
       children: [
         const PointsAndCouponSection(),
         const SizedBox(height: 13,),
         ButtonWithImage(
             onPressed:(){}, width: double.infinity,
             mainAxisAlignment: MainAxisAlignment.start,
             radius: 9, height: 50, txt: S.of(context).more_order_more_points,
             widget: Icon(Icons.error_outline,color: AllColors.buttonMainColor,)),
         const SizedBox(height: 13,),
         const ChallengesAndRewardsSection(),
         const SizedBox(height: 13,),
         const CurrentLevelContainer(),
         const SizedBox(height: 13,),
         const InviteFriendContainer()
       ],
     ),
              );
  }
}
