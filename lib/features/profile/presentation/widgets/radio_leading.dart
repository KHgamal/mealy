import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../generated/assets.dart';
import '../controller/app_language_provider/radio_button_provider.dart';
class RadioLeading extends StatelessWidget {
  const RadioLeading({
  super.key,
  required this.model, required this.text,
  });

  final ChangeLanguageProvider model;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.imagesLanguageIcon , width: 24,height: 24,),
        const SizedBox(width: 8,),
        Text(
          text,
          style: model. groupValue == text
              ? Styles.textStyleBook16(context)
              .copyWith(color: AllColors.mainText)
              : Styles.textStyleBook16(context)
              .copyWith(color: AllColors.disabledText),
        ),
      ],
    );
  }
}