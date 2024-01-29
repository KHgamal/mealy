import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/generated/assets.dart';

import '../../../../generated/l10n.dart';
class NoSubscriptionYetSection extends StatelessWidget {
  const NoSubscriptionYetSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width*0.4;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:28),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.imagesNoSubscription,width: width ),
            const SizedBox(height: 30,),
            Text(
              S.of(context).no_subscriptions_yet,
              textAlign: TextAlign.center,
              style:Styles.textStyleBold16(context)
            ),
          ],

      ),
    );
  }
}
