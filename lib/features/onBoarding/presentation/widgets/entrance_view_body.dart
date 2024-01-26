import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/core/common/widgets/auth_button.dart';
import 'package:mealy/core/common/widgets/common_button.dart';
import 'package:mealy/core/common/widgets/pink_button.dart';

import '../../../../generated/assets.dart';

class EntranceViewBody extends StatelessWidget {
  const EntranceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              Assets.imagesOnBoarding3,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 38,
          ),
          const Flexible(child: AuthenticationType())
        ],
      ),
    );
  }
}

class AuthenticationType extends StatelessWidget {
  const AuthenticationType({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CommonButton(txt: '', onPressed: () {}, radius: 9),
          const SizedBox(
            height: 10,
          ),
          PinkButton(
            txt: '',
            onPressed: () {},
            radius: 9,
            width: MediaQuery.of(context).size.width * 0.9,
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            '',
            style: Styles.textStyleMedium16(context),
          ),
          const SizedBox(
            height: 21,
          ),
          AuthButton(
              txt: '', onPressed: () {}, image: Assets.imagesFacebookIcon),
          const SizedBox(
            height: 10,
          ),
          AuthButton(txt: '', onPressed: () {}, image: Assets.imagesGoogleIcon),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: Text('visit',
                style: Styles.textStyleMedium16(context)
                    .copyWith(color: AllColors.buttonMainColor)),
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
