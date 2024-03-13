import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mealy/generated/assets.dart';
import 'package:provider/provider.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../core/common/widgets/profile_photo.dart';
import '../../../../generated/l10n.dart';
import '../../../profile/data/models/user_info.dart';
import '../controller/guest_version_provider/guest_version_provider.dart';

class UserInfoHeader extends StatelessWidget {
  const UserInfoHeader({super.key, required this.user});
  final UserInfo user;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfilePhoto(user: user),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Provider.of<GuestProvider>(context).guest ?
              "${S.of(context).Have_a_wonderful_day} 😍"
              :"${S.of(context).Have_a_wonderful_day} ${user.name.split(" ")[0]} 😍",
              style: Styles.textStyleMedium16(context)
                  .copyWith(color: AllColors.mainText),
            ),
            const SizedBox(height: 8,),
            Row(
              children: [
                SvgPicture.asset(Assets.imagesLocation ,width: 14,height: 14,),
                const SizedBox(width: 5,),
                Text(
                  "${S.of(context).Deliver_to} ${user.city}",
                  style: Styles.textStyleBook12(context)
                      .copyWith(color: AllColors.subtitleColor),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      minimumSize:Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      alignment: Alignment.centerLeft
                      ),
                  onPressed: (){},
                  child: Text(
                  S.of(context).change,
                  style: Styles.textStyleMedium12(context)
                      .copyWith(color: AllColors.buttonMainColor),
                ),)
              ],
            ),
          ],
        ),
        const Spacer(),
        SvgPicture.asset(Assets.imagesNotificationBing, width: 24,height: 24,)
      ],
    );
  }
}
