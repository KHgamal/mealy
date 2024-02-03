import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
class InputLabel extends StatelessWidget {
  const InputLabel({super.key, required this.text, this.optionalTxt});
  final String text;
  final String? optionalTxt;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          TextSpan(text: text, style:Styles.textStyleMedium16(context).
          copyWith(color:AllColors.mainText), children: [
            TextSpan(
              text:optionalTxt,
              style: Styles.textStyleMedium16(context)
                  .copyWith(color: AllColors.disabledText),
            ),
          ]),
        ),
        const SizedBox(height: 12,)
      ],
    );
  }
}