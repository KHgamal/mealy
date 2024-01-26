import 'package:flutter/material.dart';
import 'package:mealy/features/Auth/presentation/widgets/Resend_code_section.dart';
import 'package:mealy/features/Auth/presentation/widgets/otp.dart';
import 'package:mealy/generated/l10n.dart';

import '../../../../core/common/widgets/common_button.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(child: SizedBox()),
              Otp(),
              ResendCode(),
              Expanded(
                  flex: 2,
                  child: SizedBox()),
              CommonButton(txt:S.of(context).continue_text, onPressed:(){}, radius: 8,),
              Expanded(
                  flex: 3,
                  child: SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}
