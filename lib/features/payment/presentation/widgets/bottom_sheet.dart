import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/core/common/widgets/common_button.dart';
import 'package:mealy/core/common/widgets/text_field.dart';

import '../../../../core/common/widgets/radiobutton_2_horizontal.dart';
import '../../../../core/common/widgets/radiobutton_2_vertical.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';
import 'input_label.dart';
void shoBottomSheet(context){
  TextEditingController floorController=TextEditingController();
  TextEditingController officeController=TextEditingController();
  TextEditingController notesController=TextEditingController();
  TextEditingController contactController=TextEditingController();
  showModalBottomSheet<void>(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(topLeft:Radius.circular(16),
          topRight: Radius.circular(16)),
    ),
    isScrollControlled:true,
    useSafeArea: true,
    context: context,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all( 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(child: SizedBox()),
                  Column(
                    children: [
                    Container(
                      height: 8,
                      width: 73,
                      decoration: BoxDecoration(
                        color: AllColors.gray,
                        borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                    const SizedBox(height: 16,),
                    Text(S.of(context).Delivery_preferences , style: Styles.textStyleSemiBold16(context)),
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  GestureDetector(
                    child: SvgPicture.asset(Assets.imagesExitIcon),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              const SizedBox(height:30,),
              Row(
                children: [
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InputLabel(text:S.of(context).Floor,),
                      CustomTextField(hintText: "00",payment: true,height: 41,
                        fillColor: AllColors.tfFill,controller: floorController,)
                    ],
                  )),
                  const SizedBox(width:20,),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InputLabel(text:S.of(context).Office_number,),
                      CustomTextField(hintText: "00",payment: true,height: 41,
                        fillColor: AllColors.tfFill,controller: officeController,)
                    ],
                  )),
                ],
              ),
              const SizedBox(height:16,),
              InputLabel(text:S.of(context).Delivery_notes,optionalTxt:S.of(context).optional ,),
              CustomTextField(hintText: "",payment: true,height:110,maxLines: true
              ,fillColor: AllColors.tfFill,controller: notesController,),
              const SizedBox(height:16,),
              InputLabel(text:S.of(context).Favorite_contact,),
              const RadioButton2OptionHorizontal(text1:"اتصال",text2: "واتساب",),
              const SizedBox(height:16,),
              InputLabel(text:S.of(context).contact_number,),
              CustomTextField(hintText:"00000000000",payment: true,height:48,prefixIcon:
              SvgPicture.asset(Assets.imagesMobile),fillColor: AllColors.tfFill,
              controller: contactController,),
              const SizedBox(height:16,),
              InputLabel(text:S.of(context).receiving_Preferences,),
              const RadioButton2OptionVertical(text1: "قابلني عند الاستقبال",text2: "اترك الوجبة مع الاستقبال",),
              const SizedBox(height:16,),
              CommonButton(txt:S.of(context).save, onPressed: (){}, radius: 8 ,high: 48,)
            ],
          ),
        ),
      );
    },
  );
}
