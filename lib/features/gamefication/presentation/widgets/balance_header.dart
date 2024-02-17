import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constant.dart';
import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';
import 'balance_container.dart';

class BalanceHeader extends StatelessWidget {
  const BalanceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AllColors.buttonMainColor,
      padding: const EdgeInsets.fromLTRB(16, 50, 16, 37) ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width:188,
                child : Text("${S.of(context).Welcome} ${kUser.name.split(" ")[0]} "
                    "${S.of(context).to_your_rewards}",
                    style: Styles.textStyleSemiBold24(context)),
              ),
              const SizedBox(height: 16,),
              const BalanceContainer(),
            ],
          ),
          SvgPicture.asset(Assets.imagesDollarBag,width: 103,height: 160,)
        ],
      ),
    );
  }
}