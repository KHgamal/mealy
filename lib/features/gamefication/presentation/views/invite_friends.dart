import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mealy/core/common/widgets/button_with_image.dart';
import 'package:mealy/generated/assets.dart';

import '../../../../constant.dart';
import '../../../../core/common/widgets/custom_app_bar.dart';
import '../../../../generated/l10n.dart';

class InviteFriendView extends StatelessWidget {
  const InviteFriendView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
                child: SingleChildScrollView(
                    child: Column(children: [
                 const  InviteFriendHeader(),
                 SvgPicture.asset(Assets.imagesFriendInvite ,width: 106
                   ,height: 230,)
                ])))));
  }
}

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
