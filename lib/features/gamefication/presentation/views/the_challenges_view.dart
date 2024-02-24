import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/features/gamefication/presentation/widgets/challenges_grid_view.dart';

import '../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../generated/l10n.dart';

class TheChallengesView extends StatelessWidget {
  const TheChallengesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonCustomAppBar(title: S.of(context).the_levels),
                const SizedBox(
                  height: 34,
                ),
                Text(
                  S.of(context).challenges_board,
                  style: Styles.textStyleMedium18(context).copyWith(
                    color: AllColors.buttonMainColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  S.of(context).collect_points,
                  style: Styles.textStyleMedium14(context).copyWith(
                    color: AllColors.descr,
                  ),
                ),
                const SizedBox(
                  height: 34,
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.5,
                  //0.291025
                  child: const ChallengesGridView(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
