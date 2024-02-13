import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mealy/core/common/widgets/text_field.dart';
import 'package:mealy/features/Auth/presentation/views/changing_password_view2.dart';
import 'package:mealy/features/Auth/presentation/views/create_account_view.dart';
import 'package:mealy/generated/assets.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../core/common/widgets/common_button.dart';
import '../../../../core/common/widgets/white_button.dart';
import '../../../../generated/l10n.dart';
import '../widgets/auth_header.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  static String id = "Login_view";

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController phoneController=TextEditingController();
  TextEditingController passController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            AuthHeader(
              title: S.of(context).authHeader1,
              subTitle: S.of(context).authSubTitle,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    height: 12,
                  ),
                  CustomTextField(
                    controller: passController,
                    hintText: S.of(context).password,
                    prefixIcon: SvgPicture.asset(Assets.imagesUnlock),
                    suffixIcon: true,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextButton(
                    onPressed: () => Navigator.pushReplacementNamed(
                        context, ChangingPasswordView2.id),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      S.of(context).forget_password,
                      style: Styles.textStyleSemiBold12(context)
                          .copyWith(color: AllColors.buttonMainColor),
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Center(
                    child: CommonButton(
                      txt: S.of(context).login,
                      onPressed: () {},
                      radius: 8,
                      high: 54,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  WhiteButton(
                    txt: S.of(context).createAccount,
                    onPressed: () => Navigator.pushReplacementNamed(
                        context, CreateAccountView.id),
                    high: 54,
                    width: MediaQuery.of(context).size.width - 16,
                    style: Styles.textStyleMedium16(context)
                        .copyWith(color: AllColors.disabledText),
                    radius: 10,
                    border: false,
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
