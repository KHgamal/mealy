import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/features/Auth/presentation/widgets/otp.dart';
import 'package:mealy/generated/l10n.dart';

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
              Otp(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(S.of(context).code_not_received ,
                  style:Styles.textStyleSemiBold14(context).copyWith(color:AllColors.black ),),
                  TextButton(
                    onPressed: (){},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(S.of(context).resend_code,
                      style:Styles.textStyleSemiBold14(context).copyWith(color:AllColors.buttonMainColor ),),
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
