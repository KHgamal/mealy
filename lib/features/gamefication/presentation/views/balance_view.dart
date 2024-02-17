import 'package:flutter/material.dart';
import 'package:mealy/constant.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/widgets/button_with_image.dart';
import 'package:mealy/generated/l10n.dart';

import '../widgets/balance_header.dart';
import '../widgets/challenge_reward_conrainer.dart';
import '../widgets/counter_container.dart';
class BalanceView extends StatelessWidget {
  const BalanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Column(
         children: [
           const  BalanceHeader(),
           const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: CounterContainer(count: points,
                      text: S.of(context).point ,)),
                    const SizedBox(width: 16,),
                    Expanded(child: CounterContainer(count: coupon,
                      text: S.of(context).coupon ,)),
                  ],
                ),
                const SizedBox(height: 13,),
                ButtonWithImage(onPressed:(){}, width: double.infinity,
                    mainAxisAlignment: MainAxisAlignment.start,
                    radius: 9, height: 50, txt: S.of(context).more_order_more_points,
                    widget: Icon(Icons.error_outline,color: AllColors.buttonMainColor,)),
                const SizedBox(height: 13,),
                Row(
                  children: [
                    Expanded(child: ChallengeAndRewardContainer(text: S.of(context).challenges,
                    onTap: (){},)),
                    const SizedBox(width: 16,),
                    Expanded(child: ChallengeAndRewardContainer(text: S.of(context).rewards,
                      onTap: (){},)),
                  ],
                ),
              ],
            ),
          )
         ],
      ) ,
    ));
  }
}
