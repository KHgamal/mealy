import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/features/Auth/presentation/views/login_view.dart';
import 'package:mealy/features/Auth/presentation/widgets/auth_header.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../core/common/widgets/common_button.dart';
import '../../../../core/common/widgets/text_field.dart';
import '../../../../core/common/widgets/white_button.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';
import '../views/changing_password_view.dart';

class ChangingPasswordView2Body extends StatefulWidget {
  const ChangingPasswordView2Body({super.key});

  @override
  State<ChangingPasswordView2Body> createState() => _ChangingPasswordView2BodyState();
}

class _ChangingPasswordView2BodyState extends State<ChangingPasswordView2Body> {
  TextEditingController phoneController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AuthHeader(
          title: S.of(context).authHeader4,
          subTitle: S.of(context).authSubTitle,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 45,
              ),
              CustomTextField(
                controller: phoneController,
                  hintText: " +2001554385966",
                  prefixIcon: SvgPicture.asset(
                    Assets.imagesEgypt,
                  )),
              const SizedBox(
                height: 15,
              ),
              CommonButton(
                txt: S.of(context).continuation,
                onPressed: () => Navigator.pushReplacementNamed(
                    context, ChangingPasswordView.id),
                radius: 8,
                high: 54,
              ),
              const SizedBox(
                height: 12,
              ),
              WhiteButton(
                txt: S.of(context).already_have_an_account,
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, LoginView.id),
                high: 54,
                style: Styles.textStyleMedium16(context)
                    .copyWith(color: AllColors.disabledText),
                radius: 10,
                border: false,
                subTxt: S.of(context).login,
              ),
              const SizedBox(
                height: 45,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
