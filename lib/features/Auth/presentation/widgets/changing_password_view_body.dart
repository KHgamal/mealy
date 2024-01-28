import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/core/common/widgets/common_button.dart';
import 'package:mealy/core/common/widgets/text_field.dart';
import 'package:mealy/features/Auth/presentation/views/changing_password_view2.dart';
import 'package:mealy/features/Auth/presentation/widgets/auth_header.dart';

import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';

class ChangingPasswordViewBody extends StatelessWidget {
  const ChangingPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AuthHeader(
            title: S.of(context).authHeader4,
            subTitle: S.of(context).authSubTitle),
        const SizedBox(
          height: 45,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                hintText: S.of(context).password,
                prefixIcon: SvgPicture.asset(Assets.imagesUnlock),
                suffixIcon: true,
                obscureText: true,
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextField(
                hintText: S.of(context).confirmPassword,
                prefixIcon: SvgPicture.asset(Assets.imagesUnlock),
                suffixIcon: true,
                obscureText: true,
              ),
              const SizedBox(
                height: 45,
              ),
              CommonButton(
                  txt:S.of(context).confirm,
                  onPressed: () => Navigator.of(context)
                      .pushNamed(ChangingPasswordView2.id),
                  radius: 8),
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
