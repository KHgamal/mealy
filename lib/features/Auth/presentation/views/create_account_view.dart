import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/features/Auth/presentation/views/login_view.dart';
import 'package:mealy/features/Auth/presentation/views/otp_view.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../core/common/widgets/common_button.dart';
import '../../../../core/common/widgets/text_field.dart';
import '../../../../core/common/widgets/white_button.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';
import '../widgets/auth_header.dart';
class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});
  static String id="CreateAccountView";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            AuthHeader(
              title: S.of(context).authHeader2,
              subTitle:  S.of(context).authSubTitle ,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                const SizedBox(
                height: 45,
              ),
                  CustomTextField(hintText: " +2001554385966",
                      prefixIcon:SvgPicture.asset(Assets.imagesEgypt , ) ),
                  const SizedBox(height: 15,),
                  CommonButton(txt:S.of(context).continuation,
                    onPressed:()=>Navigator.pushReplacementNamed(context, OTPScreen.id),
                    radius: 8,),
                  const SizedBox(height: 12,),
                  WhiteButton(
                    txt:S.of(context).already_have_an_account,
                    onPressed: ()=>Navigator.pushReplacementNamed(context,LoginView.id),
                    high: 54,
                    width: 343,
                    style:Styles.textStyleMedium16(context).copyWith(color: AllColors.disabledText) ,
                    radius: 10,
                    border: false,
                    subTxt: S.of(context).login,
                  ),
                  const SizedBox(
                    height:45,
                  ),
                ],
              ),
            ),
          ],
        ) ,
      ),
    );
  }
}