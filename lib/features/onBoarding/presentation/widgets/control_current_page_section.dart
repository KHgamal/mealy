import 'package:flutter/material.dart';
import 'package:mealy/features/onBoarding/presentation/widgets/dots_indicator.dart';
import 'package:mealy/features/onBoarding/presentation/widgets/on_boarding_descrption.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../core/common/widgets/common_button.dart';
import '../../../../generated/l10n.dart';
import '../views/entrance_view.dart';
import 'on_boarding_title.dart';

class ControlCurrentPageSection extends StatelessWidget {
  const ControlCurrentPageSection(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.currentPageIndex,
      required this.nextPage});
  final String title;
  final String subTitle;
  final int currentPageIndex;
  final void Function() nextPage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OnBoardingHeader(
            title: title,
          ),
          const SizedBox(
            height: 7,
          ),
          OnBoardingDescription(subTitle: subTitle),
          const SizedBox(
            height: 13,
          ),
          DotsIndicator(currentPageIndex: currentPageIndex),
          const SizedBox(
            height: 13,
          ),
          currentPageIndex == 2
              ? CommonButton(
                  onPressed: () =>
                      Navigator.pushReplacementNamed(context, EntranceView.id),
                  radius: 9,
                  txt: S.of(context).startOrdering,
                  high: 54,
                )
              : Column(
                  children: [
                    CommonButton(
                      onPressed: () => nextPage(),
                      radius: 9,
                      txt: S.of(context).next,
                      high: 54,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () => Navigator.pushReplacementNamed(
                          context, EntranceView.id),
                      child: Text(S.of(context).skip,
                          style: Styles.textStyleBook16(context)
                              .copyWith(color: AllColors.descr)),
                    ),
                  ],
                ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
