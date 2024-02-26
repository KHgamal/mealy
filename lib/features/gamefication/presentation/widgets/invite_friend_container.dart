import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../generated/l10n.dart';
import '../../../Subscriptions/presentation/widgets/options_element.dart';
class InviteFriendContainer extends StatelessWidget {
  const InviteFriendContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 20),
        decoration: BoxDecoration(
          color: AllColors.calTextColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(S.of(context).invite_friend, style:
            Styles.textStyleSemiBold14(context).copyWith(color: AllColors.mainText)),
            const SizedBox(height: 16,),
            OptionsElement(color: AllColors.descr ,text: S.of(context).Get_3500_points ),
            const SizedBox(height: 8,),
            OptionsElement(color: AllColors.descr ,text: S.of(context).They_get_3500_points ),
          ],
        ),
      ),
    );
  }
}