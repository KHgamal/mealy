import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/core/common/widgets/common_button.dart';
import 'package:mealy/core/common/widgets/white_button.dart';
import 'package:mealy/generated/assets.dart';

import '../../../../core/common/res/colors.dart';

class AccessLocationDialog extends StatelessWidget {
  const AccessLocationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AllColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(Assets.imagesAccessLocation),
          const SizedBox(
            height: 20,
          ),
          Text(
            'السماح ل “Meally” من الوصول لموقعك',
            textAlign: TextAlign.center,
            style: Styles.textStyleMedium16(context).copyWith(
              color: AllColors.buttonMainColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'حتى تتمكن من متابعة طلبك يرجى السماح لنا من الوصول الى موقعك',
            textAlign: TextAlign.center,
            style: Styles.textStyleBook16(context)
                .copyWith(color: AllColors.descr),
          ),
          const SizedBox(
            height: 8,
          ),
          CommonButton(
            txt: 'سماح',
            onPressed: () {},
            radius: 10,
            width: MediaQuery.sizeOf(context).width * 0.699,
            high: 41,
          ),
          const SizedBox(
            height: 10,
          ),
          WhiteButton(
            txt: 'الغاء',
            onPressed: () {},
            high: 41,
            width: MediaQuery.sizeOf(context).width * 0.699,
            radius: 10,
            style: Styles.textStyleSemiBold14(context)
                .copyWith(color: AllColors.buttonMainColor),
          )
        ],
      ),
    );
  }
}
