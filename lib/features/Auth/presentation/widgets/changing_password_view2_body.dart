import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/features/Auth/presentation/widgets/auth_header.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../core/common/widgets/common_button.dart';
import '../../../../core/common/widgets/text_field.dart';
import '../../../../core/common/widgets/white_button.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';

class ChangingPasswordView2Body extends StatelessWidget {
  const ChangingPasswordView2Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthHeader(
          title: S.of(context).authHeader4,
          subTitle: S.of(context).authSubTitle,
        ),
        const SizedBox(
          height: 38,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const Expanded(child: SizedBox()),
                CustomTextField(
                    hintText: " +2001554385966",
                    prefixIcon: SvgPicture.asset(
                      Assets.imagesEgypt,
                    )),
                const SizedBox(
                  height: 15,
                ),
                CommonButton(
                  txt: S.of(context).continuation,
                  onPressed: () {},
                  radius: 8,
                ),
                const SizedBox(
                  height: 12,
                ),
                WhiteButton(
                  txt: S.of(context).already_have_an_account,
                  onPressed: () {},
                  high: 54,
                  width: 343,
                  style: Styles.textStyleMedium16(context)
                      .copyWith(color: AllColors.disabledText),
                  radius: 10,
                  border: false,
                ),
                const Expanded(flex: 2, child: SizedBox()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
