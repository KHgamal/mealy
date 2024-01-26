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
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/onBoarding4.png',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.046,
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
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.0123,
          ),
          PinkButton(
            txt: '',
            onPressed: () {},
            radius: 9,
            width: MediaQuery.sizeOf(context).width * 0.9,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.0295,
          ),
          Text(
            '',
            style: Styles.textStyleMedium16(context),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.0258,
          ),
          AuthButton(
              txt: '', onPressed: () {}, image: Assets.imagesFacebookIcon),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.0123,
          ),
          AuthButton(txt: '', onPressed: () {}, image: Assets.imagesGoogleIcon),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: Text('visit',
                style: Styles.textStyleMedium16(context)
                    .copyWith(color: AllColors.buttonMainColor)),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.0295,
          ),
        ],
      ),
    );
  }
}
