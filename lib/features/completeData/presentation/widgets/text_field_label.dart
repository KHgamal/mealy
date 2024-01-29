import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
class TextFieldLabel extends StatelessWidget {
  const TextFieldLabel({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: Styles.textStyleMedium16(context).copyWith(color: AllColors.black)
        ),
        const SizedBox(height: 12,)
      ],
    );
  }
}
