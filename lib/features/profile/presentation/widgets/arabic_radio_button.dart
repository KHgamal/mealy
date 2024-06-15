import 'package:flutter/material.dart';
import 'package:mealy/features/profile/presentation/widgets/radio_leading.dart';
import 'package:provider/provider.dart';

import '../../../../core/common/res/colors.dart';
import '../controller/app_language_provider/radio_button_provider.dart';

class ArabicRadioButton extends StatelessWidget {
  const ArabicRadioButton({
  super.key, required this.model,
  });
  final ChangeLanguageProvider model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<ChangeLanguageProvider>(context,listen:false ).
        checkRadio( "اللغة العربية");
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        height: 48,
        decoration: BoxDecoration(
            color: model.groupValue == "اللغة العربية"
                ? AllColors.buttonBgColor
                : AllColors.unChoosenGender,
            border: Border.all(
                color: model. groupValue == "اللغة العربية"
                    ? AllColors.buttonMainColor
                    : AllColors.gray,
                width: 1),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RadioLeading(model: model,text :"اللغة العربية"),
            ArabicRadio(model: model),
          ],
        ),
      ),
    );
  }
}

class ArabicRadio extends StatelessWidget {
  const ArabicRadio({
  super.key,
  required this.model,
  });

  final ChangeLanguageProvider model;

  @override
  Widget build(BuildContext context) {
    return Radio<String>(
      groupValue: model. groupValue,
      onChanged: (value) {
        Provider.of<ChangeLanguageProvider>(context,listen:false ).checkRadio(value as String);
      },
      value: "اللغة العربية",
      fillColor: model. groupValue == "اللغة العربية"
          ? WidgetStateProperty.all(AllColors.buttonMainColor)
          : WidgetStateProperty.all(AllColors
          .gray), // Change the fill color when selected
    );
  }
}