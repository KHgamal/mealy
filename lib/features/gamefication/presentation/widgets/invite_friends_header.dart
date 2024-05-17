import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/constant.dart';
import 'package:mealy/core/common/widgets/custom_app_bar.dart';
import 'package:mealy/generated/assets.dart';
import 'package:mealy/generated/l10n.dart';

import '../../../../core/common/widgets/button_with_image.dart';
class InviteFriendHeader extends StatelessWidget {
  const InviteFriendHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CommonCustomAppBar(title: S.of(context).invite_friend),
        const Spacer(),
        Expanded(child: ButtonWithImage(onPressed: (){}, radius: 9,
            txt:"$point  ${S.of(context).points}", widget:
            SvgPicture.asset(Assets.imagesCoins , width: 15,))),
      ],
    );
  }
}