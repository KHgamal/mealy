import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';
import 'package:mealy/generated/assets.dart';

import '../../../../generated/l10n.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          Text(
            S.of(context).chooseYourMeals,
            style: Styles.textStyleSemiBold16(context)
                .copyWith(color: AllColors.black),
          ),
          Row(
            children: [
              SvgPicture.asset(Assets.imagesHeadphone),
              Text(
                S.of(context).help,
                style: Styles.textStyleBook16(context)
                    .copyWith(color: AllColors.buttonMainColor),
              )
            ],
          )
        ],
      ),
    );
  }
}
