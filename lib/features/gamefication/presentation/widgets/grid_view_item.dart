import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/styles.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../generated/assets.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({super.key, required this.meal, required this.point});

  final String meal, point;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(Assets.imagesPlate),
        const SizedBox(
          height: 5,
        ),
        Text(
          meal,
          style:
              Styles.textStyleMedium12(context).copyWith(color: AllColors.gray),
        ),
        Text(
          point,
          style: Styles.textStyleMedium12(context),
        ),
      ],
    );
  }
}
