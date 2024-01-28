import 'package:flutter/material.dart';
import 'package:mealy/features/Auth/presentation/widgets/resend_code_section.dart';
import 'package:mealy/features/Auth/presentation/widgets/otp.dart';
import 'package:mealy/generated/l10n.dart';

import '../../../../core/common/widgets/common_button.dart';
import '../widgets/auth_header.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});
  static String id="OTPScreen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            AuthHeader(
              title: S.of(context).authHeader3,
              subTitle: S.of(context).authSubTitle,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                 const SizedBox(
                    height: 45,
                  ),
                  const Otp(),
                  const ResendCode(),
                  const SizedBox(
                    height:55,
                  ),
                  CommonButton(
                    txt: S.of(context).continue_text,
                    onPressed: () {},
                    radius: 8,
                  ),
              const SizedBox(
                height:55,
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
