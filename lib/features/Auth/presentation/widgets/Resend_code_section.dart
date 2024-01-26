import 'package:flutter/material.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../generated/l10n.dart';
class ResendCode extends StatelessWidget {
  const ResendCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.of(context).code_not_received ,
          style:Styles.textStyleSemiBold14(context).copyWith(color:AllColors.black ),),
        TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child:Text(S.of(context).resend_code,
            style:Styles.textStyleSemiBold14(context).copyWith(color:AllColors.buttonMainColor ),),
        ),

      ],
    );
  }
}
