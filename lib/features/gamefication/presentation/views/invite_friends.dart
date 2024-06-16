import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/features/gamefication/presentation/widgets/counter_container.dart';
import 'package:mealy/features/gamefication/presentation/widgets/invite_friends_header.dart';
import 'package:mealy/generated/assets.dart';
import 'package:mealy/generated/l10n.dart';

import '../../../../constant.dart';


class InviteFriendView extends StatelessWidget {
  static String id = "InviteFriendView";
  const InviteFriendView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
                child: Column(children: [
                                 const  InviteFriendHeader(),
                  const Spacer(),
                                 SvgPicture.asset(Assets.imagesFriendInvite ,width: 106
                                   ,height: 230,),
                  const Spacer(),
                  Text(S.of(context).get_and_give_points, style: Styles.textStyleBold16(context),
                  textAlign: TextAlign.center),
                  const SizedBox(height: 10,),
                  Text(S.of(context).share_the_link, style: Styles.textStyleBook16(context).
                  copyWith(color: AllColors.descr),textAlign: TextAlign.center,),
                  const SizedBox(height: 30,),
                  const Row(
                    children: [
                       CopyButton(),
                      UniqueLinkContainer()
                    ],
                  ),
                  const Spacer(),
                  const DoneAndPendingSection(),
                  const Spacer(flex: 2,),
                                ]))));
  }
}

class DoneAndPendingSection extends StatelessWidget {
  const DoneAndPendingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            Expanded(
                child: CounterContainer(
              count: "0",
              text: S.of(context).done,
              image: false,
            )),
            const SizedBox(
              width: 16,
            ),
            Expanded(
                child: CounterContainer(
              count: "2",
              image: false,
              text: S.of(context).pending,
            )),
          ],
        );
  }
}

class UniqueLinkContainer extends StatelessWidget {
  const UniqueLinkContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 48,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft:  Radius.circular(10)
          ),
          color: AllColors.otpBg
         ),
         child: Center(
           child: Text(link,
            style: Styles.textStyleBook16(context)),
         ) ,
      ),
    );
  }
}

class CopyButton extends StatelessWidget {
  const CopyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height:48,
      child: ElevatedButton(onPressed: () =>copyLink(context)
      ,            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(AllColors.buttonMainColor),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
         const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight:  Radius.circular(8) ,
              bottomRight:  Radius.circular(8)  ,
            ),
            )
        )
      )
      ,child: Row(
        children: [
          Icon(Icons.copy_rounded , color: AllColors.white ,),
          const SizedBox(width: 5,),
          Text(S.of(context).copy, style: Styles.textStyleBook16(context).
          copyWith(color: AllColors.white),),
        ],
      )
       ),
    );
  }

  void copyLink(BuildContext context)async {
     Clipboard.setData(
            ClipboardData(text: link))
        .then(
      (value) {
        return ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Text Copied'),
          ),
        );
      },
    );
  }
}


