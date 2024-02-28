import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../views/rewards_view.dart';
import '../views/the_challenges_view.dart';
import 'challenge_reward_container.dart';
class ChallengesAndRewardsSection extends StatelessWidget {
  const ChallengesAndRewardsSection({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ChallengeAndRewardContainer(
              text: S.of(context).challenges,
              onTap: () => Navigator.pushNamed(context, TheChallengesView.id,)
            ),),
        const SizedBox(width: 16,),
        Expanded(
            child: ChallengeAndRewardContainer(
              text: S.of(context).rewards,
              onTap: () => Navigator.pushNamed(context, RewardsView.id,),)
        ),
      ],
    );
  }
}