import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/core/common/res/colors.dart';

import '../../../../../generated/assets.dart';
import 'fading_logo.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AllColors.buttonMainColor,
        ),
        Center(
          child: SvgPicture.asset(Assets.imagesSplashBg, fit: BoxFit.cover),
        ),
        const FadingLogo(),
      ],
    );
  }
}
