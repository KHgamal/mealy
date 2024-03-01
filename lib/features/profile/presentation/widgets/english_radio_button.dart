import 'package:flutter/material.dart';
import 'package:mealy/features/profile/presentation/widgets/radio_leading.dart';
import 'package:provider/provider.dart';

import '../../../../core/common/res/colors.dart';
import '../controller/app_language_provider/radio_button_provider.dart';

class EnglishRadioButton extends StatelessWidget {
  const EnglishRadioButton({
  super.key, required this.model,
  });
  final ChangeLanguageProvider model;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<ChangeLanguageProvider>(context,listen:false ).
        checkRadio( "English");
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        height:48,
        decoration: BoxDecoration(
            color: model. groupValue == "English"
                ? AllColors.buttonBgColor
                : AllColors.unChoosenGender,
            border: Border.all(
                color: model. groupValue == "English"
                    ? AllColors.buttonMainColor
                    : AllColors.gray,
                width: 1),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RadioLeading(model: model,text :"English"),
            EnglishRadio(model: model),
          ],
        ),
      ),
    );
  }
}

class EnglishRadio extends StatelessWidget {
  const EnglishRadio({
  super.key,
  required this.model,
  });

  final ChangeLanguageProvider model;

  @override
  Widget build(BuildContext context) {
    return Radio<String>(
      groupValue: model.groupValue,
      onChanged: (value) {
        Provider.of<ChangeLanguageProvider>(context,listen:false ).
        checkRadio(value as String);
      },
      value: "English",
      fillColor: model.groupValue == "English"
          ? MaterialStateProperty.all(AllColors.buttonMainColor)
          : MaterialStateProperty.all(AllColors
          .gray), // Change the fill color when selected
    );
  }
}