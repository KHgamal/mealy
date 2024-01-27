import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mealy/core/common/widgets/text_field.dart';
import 'package:mealy/generated/assets.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../core/common/widgets/common_button.dart';
import '../../../../generated/l10n.dart';
import '../widgets/auth_header.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AuthHeader(
              title: S.of(context).authHeader1,
              subTitle:  S.of(context).authSubTitle ,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const Expanded(child:  SizedBox()),
                    CustomTextField(hintText: " +2001554385966",
                        prefixIcon:SvgPicture.asset(Assets.imagesEgypt , ) ),
                    const SizedBox(height: 12,),
                    CustomTextField(
                      hintText: S.of(context).password,
                      prefixIcon: const Icon(Icons.lock_open_outlined),
                      suffixIcon:true ,
                      obscureText: true,
                    ),
                    const SizedBox(height: 15,),
                    TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child:Text(S.of(context).forget_password,
                        style:Styles.textStyleSemiBold12(context).copyWith(color:AllColors.buttonMainColor ),),
                    ),
                    const Expanded(child:  SizedBox()),
                    CommonButton(txt:S.of(context).login, onPressed:(){}, radius: 8,),
                    const Expanded(
                      flex: 2,
                        child:  SizedBox()),
                  ],
                ),
              ),
            ),
          ],
        ) ,
      ),
    );
  }
}
