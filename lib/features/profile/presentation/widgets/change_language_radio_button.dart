import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
import '../../../../generated/assets.dart';
import '../controller/app_language_provider/app_language_provider.dart';
import '../controller/app_language_provider/radio_button_provider.dart';

class ChangeLanguageRadioButton extends StatelessWidget {
  const ChangeLanguageRadioButton({
  super.key,

  });
  @override
  Widget build(BuildContext context) {
    var appLanguage = Provider.of<AppLanguage>(context, listen:false );
    return ChangeNotifierProvider(
      create: (_) => ChangeLanguageProvider(),
      child: Consumer<ChangeLanguageProvider>(
        builder:(context, model, child) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  appLanguage.changeLanguage(const Locale("ar"));
                  model.groupValue = "اللغة العربية";
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  height: 48,
                  decoration: BoxDecoration(
                      color: model. groupValue == "اللغة العربية"
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
                      Row(
                        children: [
                          SvgPicture.asset(Assets.imagesLanguageIcon , width: 24,height: 24,) ,
                          const SizedBox(width: 8,),
                          Text(
                            "اللغة العربية",
                            style: model. groupValue ==" اللغة العربية"
                                ? Styles.textStyleBook16(context)
                                .copyWith(color: AllColors.mainText)
                                : Styles.textStyleBook16(context)
                                .copyWith(color: AllColors.disabledText),
                          ),
                        ],
                      ),
                      Radio<String>(
                        groupValue: model. groupValue,
                        onChanged: (value) {
                          Provider.of<ChangeLanguageProvider>(context,listen:false ).
                          checkRadio(value as String);
                          appLanguage.changeLanguage(const Locale("ar"));
                        },
                        value: "اللغة العربية",
                        fillColor: model. groupValue == "اللغة العربية"
                            ? MaterialStateProperty.all(AllColors.buttonMainColor)
                            : MaterialStateProperty.all(AllColors
                            .gray), // Change the fill color when selected
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  model. groupValue ="English";
                  appLanguage.changeLanguage(Locale("en"));
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
                      Row(
                        children: [
                          SvgPicture.asset(Assets.imagesLanguageIcon , width: 24,height: 24,),
                          const SizedBox(width: 8,),
                          Text(
                           "English",
                            style: model. groupValue == "English"
                                ? Styles.textStyleBook16(context)
                                .copyWith(color: AllColors.mainText)
                                : Styles.textStyleBook16(context)
                                .copyWith(color: AllColors.disabledText),
                          ),
                        ],
                      ),
                      Radio<String>(
                        groupValue: model. groupValue,
                        onChanged: (value) {
                          Provider.of<ChangeLanguageProvider>(context,listen:false ).
                          checkRadio(value as String);
                          appLanguage.changeLanguage(Locale("en"));
                        },
                        value: "English",
                        fillColor: model. groupValue == "English"
                            ? MaterialStateProperty.all(AllColors.buttonMainColor)
                            : MaterialStateProperty.all(AllColors
                            .gray), // Change the fill color when selected
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}