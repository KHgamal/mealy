import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:provider/provider.dart';
import '../../../../core/common/widgets/common_button.dart';
import '../../../../generated/l10n.dart';
import '../../../payment/presentation/widgets/bottom_sheet.dart';
import '../controller/app_language_provider/app_language_provider.dart';
import '../controller/app_language_provider/radio_button_provider.dart';
import 'change_language_radio_button.dart';
void languageBottomSheet(context){
  showModalBottomSheet<void>(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(topLeft:Radius.circular(16),
          topRight: Radius.circular(16)),
    ),
    useSafeArea: true,
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState){
          var appLanguage = Provider.of<AppLanguage>(context, listen:false );
          var selectedLanguage = Provider.of<ChangeLanguageProvider>(context).groupValue;
          return Padding(
            padding: const EdgeInsets.fromLTRB(16,16,16,30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                 BottomSheetHandler(
                  color: AllColors.bottomSheetHandler,
                ),
                const SizedBox(height: 16,),
                Text(S.of(context).changeTheLanguage ,
                  style: Styles.textStyleSemiBold18(context).copyWith(
                    color: AllColors.darkGray
                  ),),
                const SizedBox(height: 24,),
                const ChangeLanguageRadioButton(),
                const SizedBox(height: 24,),
                CommonButton(
                  txt:S.of(context).choose,
                  onPressed: (){
                    appLanguage.changeLanguage(
                        selectedLanguage == 'English'? const Locale("en")
                            : const Locale('ar')
                    );
                    Navigator.pop(context);
                  }, radius: 12 ,high: 43,)
              ],
            ),
          );
        }
      );
    },
  );
}