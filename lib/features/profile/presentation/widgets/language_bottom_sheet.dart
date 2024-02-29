import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import '../../../../core/common/widgets/common_button.dart';
import '../../../../core/common/widgets/radiobutton_2_vertical.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';
import '../../../payment/presentation/widgets/bottom_sheet.dart';
void languageBottomSheet(context){
  showModalBottomSheet<void>(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(topLeft:Radius.circular(16),
          topRight: Radius.circular(16)),
    ),
    useSafeArea: true,
    context: context,
    builder: (BuildContext context) {
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
             RadioButton2OptionVertical(
              text1:"اللغة العربية" ,
              text2: "English",
              widget:SvgPicture.asset(Assets.imagesLanguageIcon , width: 24,height: 24,) ,
            ),
            const SizedBox(height: 24,),
            CommonButton(
              txt:S.of(context).choose,
              onPressed: (){
                Navigator.pop(context);
              }, radius: 12 ,high: 43,)
          ],
        ),
      );
    },
  );
}