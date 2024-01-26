import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../generated/assets.dart';
import 'header_title.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderTitle(
          title: title,
          subTitle: subTitle,
        ),
        const SizedBox(
          height: 45,
        ),
        Center(
          child: Expanded(
            child: SvgPicture.asset(Assets.imagesLogo),
          ),
        )
      ],
    );
  }
}
