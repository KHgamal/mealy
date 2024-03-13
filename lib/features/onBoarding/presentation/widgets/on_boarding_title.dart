import 'package:flutter/material.dart';

import '../../../../core/common/res/styles.dart';
import '../../../../generated/assets.dart';

class OnBoardingHeader extends StatelessWidget {
  const OnBoardingHeader({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 9,
        ),
        Flexible(
            child:
        Text(title, style: Styles.textStyleBold18(context))),
        const SizedBox(
          width: 9,
        ),
        Image.asset(
          Assets.imagesFoodHeaderIcon,
        ),
      ],
    );
  }
}
