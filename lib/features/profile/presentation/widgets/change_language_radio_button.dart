import 'package:flutter/material.dart';
import 'package:mealy/features/profile/presentation/widgets/arabic_radio_button.dart';
import 'package:provider/provider.dart';

import '../controller/app_language_provider/radio_button_provider.dart';
import 'english_radio_button.dart';

class ChangeLanguageRadioButton extends StatelessWidget {
  const ChangeLanguageRadioButton({
  super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Consumer<ChangeLanguageProvider>(
      builder:(context, model, child) {
        return Column(
          children: [
            ArabicRadioButton(model: model,),
            const SizedBox(height: 10,),
            EnglishRadioButton(model: model,),
          ],
        );
      }
    );
  }
}
