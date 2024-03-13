import 'package:flutter/material.dart';
import 'package:mealy/features/profile/presentation/controller/user_info_provider/user_info_provider.dart';
import 'package:provider/provider.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../core/common/widgets/pink_button.dart';
import '../../../../core/common/widgets/profile_photo.dart';
import '../../../../generated/l10n.dart';
import '../../data/models/user_info.dart';

class UserInfoRow extends StatelessWidget {
  const UserInfoRow({super.key, required this.user});
  final UserInfo user;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfilePhoto(user: user),
        const SizedBox(
          width: 8,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Provider.of<UserInfoProvider>(context).name ??
                  S.of(context).userName,
              // Provider.of<GuestProvider>(context).guest ?
              //     S.of(context).userName : user.name,
              style: Styles.textStyleMedium16(context)
                  .copyWith(color: AllColors.mainText),
            ),
            const SizedBox(
              height: 5,
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Text(
                Provider.of<UserInfoProvider>(context).number,
                // Provider.of<GuestProvider>(context).guest
                //     ? "01*********8"
                //     : user.number,
                style: Styles.textStyleBook14(context)
                    .copyWith(color: AllColors.subtitleColor),
              ),
            ),
          ],
        ),
        const Spacer(),
        PinkButton(
          txt: S.of(context).edit,
          onPressed: () {},
          radius: 28,
          width: MediaQuery.sizeOf(context).width * 0.1973,
          //high: 35,
          style: Styles.textStyleMedium16(context).copyWith(
            color: AllColors.buttonMainColor,
          ),
        ),
      ],
    );
  }
}
