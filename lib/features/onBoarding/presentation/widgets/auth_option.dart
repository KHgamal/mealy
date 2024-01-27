import 'package:flutter/material.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../core/common/widgets/auth_button.dart';
import '../../../../core/common/widgets/common_button.dart';
import '../../../../core/common/widgets/pink_button.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';

class AuthenticationType extends StatelessWidget {
  const AuthenticationType({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.046,
                ),
                CommonButton(
                    txt: S.of(context).createNewAccount,
                    onPressed: () {},
                    radius: 9),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.0123,
                ),
                PinkButton(
                  style: Styles.textStyleMedium16(context)
                      .copyWith(color: AllColors.buttonMainColor),
                  txt: S.of(context).login,
                  onPressed: () {},
                  radius: 9,
                  high: 54,
                  width: MediaQuery.sizeOf(context).width * 0.9,
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.0295,
                ),
                Text(
                  S.of(context).loginType,
                  style: Styles.textStyleMedium16(context),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.0258,
                ),
                AuthButton(
                    txt: S.of(context).faceLogin,
                    onPressed: () {},
                    image: Assets.imagesFacebookIcon),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.0123,
                ),
                AuthButton(
                    txt: S.of(context).googleLogin,
                    onPressed: () {},
                    image: Assets.imagesGoogleIcon),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(S.of(context).visitorLogin,
                      style: Styles.textStyleMedium16(context)
                          .copyWith(color: AllColors.buttonMainColor)),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.0295,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
