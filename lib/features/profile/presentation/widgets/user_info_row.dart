import 'package:flutter/material.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../core/common/widgets/pink_button.dart';
import '../../../../generated/l10n.dart';
import '../../data/models/user_info.dart';

class UserInfoRow extends StatelessWidget {
  const UserInfoRow({super.key, required this.user});
  final UserInfo user;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(user.image),
          //Image.network(user.image),
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.name,
              style: Styles.textStyleMedium16(context)
                  .copyWith(color: AllColors.mainText),
            ),
            Text(
              user.number,
              style: Styles.textStyleBook14(context)
                  .copyWith(color: AllColors.subtitleColor),
            ),
          ],
        ),
        const Spacer(),
        PinkButton(
          txt: S.of(context).edit,
          onPressed: () {},
          radius: 28,
          width: MediaQuery.sizeOf(context).width * 0.1973,
          high: 35,
          style: Styles.textStyleMedium16(context).copyWith(
            color: AllColors.buttonMainColor,
          ),
        ),
      ],
    );
  }
}
