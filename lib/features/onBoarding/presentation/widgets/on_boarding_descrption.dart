import 'package:flutter/material.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';

class OnBoardingDescription extends StatelessWidget {
  const OnBoardingDescription({super.key, required this.subTitle});
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 9,
        ),
        Flexible(
          child: Text(subTitle,
              style: Styles.textStyleBook16(context)
                  .copyWith(color: AllColors.descr)),
        ),
      ],
    );
  }
}
