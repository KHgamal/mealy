import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/core/common/widgets/common_button.dart';
import 'package:mealy/core/common/widgets/white_button.dart';
import 'package:mealy/generated/assets.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../generated/l10n.dart';

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
            S.of(context).allowLocationAccess,
            textAlign: TextAlign.center,
            style: Styles.textStyleMedium16(context).copyWith(
              color: AllColors.buttonMainColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            S.of(context).toTrackYourOrder,
            textAlign: TextAlign.center,
            style: Styles.textStyleBook16(context)
                .copyWith(color: AllColors.descr),
          ),
          const SizedBox(
            height: 8,
          ),
          CommonButton(
            txt:S.of(context).allow,
            onPressed: () {},
            radius: 10,
            width: MediaQuery.sizeOf(context).width * 0.699,
            high: 41,
          ),
          const SizedBox(
            height: 10,
          ),
          WhiteButton(
            txt:S.of(context).cancel,
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
