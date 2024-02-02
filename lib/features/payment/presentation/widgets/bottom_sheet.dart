import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/core/common/widgets/text_field.dart';

import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';
import 'input_label.dart';
void shoBottomSheet(context){
  showModalBottomSheet<void>(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(topLeft:Radius.circular(16),
          topRight: Radius.circular(16)),
    ),
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            GestureDetector(
              child: SvgPicture.asset(Assets.imagesExitIcon),
              onTap: () => Navigator.of(context).pop(),
            ),
            Row(
              children: [
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InputLabel(text:S.of(context).Floor,),
                    CustomTextField(hintText: "00",payment: true,height: 41,)
                  ],
                )),
                const SizedBox(width:20,),
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InputLabel(text:S.of(context).Office_number,),
                    CustomTextField(hintText: "00",payment: true,height: 41,)
                  ],
                )),
              ],
            ),
            const SizedBox(height:16,),
            InputLabel(text:S.of(context).receiving_Preferences,),
            CustomTextField(hintText: "",payment: true,height:110,maxLines: true),

          ],
        ),
      );
    },
  );
}