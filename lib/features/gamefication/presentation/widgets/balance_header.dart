import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';
import '../../../home/presentation/controller/guest_version_provider/guest_version_provider.dart';
import '../../../profile/presentation/controller/user_info_provider/user_info_provider.dart';
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
                child : Text(Provider.of<GuestProvider>(context).guest?
                "${S.of(context).Welcome.replaceAll(",","")} ${S.of(context).to_your_rewards.replaceAll(",","")}" :
                "${S.of(context).Welcome} ${Provider.of<UserInfoProvider>(context).name ??
                    S.of(context).userName.split(" ")[0]} ${S.of(context).to_your_rewards}",
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