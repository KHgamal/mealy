import 'package:flutter/material.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
class GenderContainer extends StatelessWidget {
  const GenderContainer({super.key, required this.text, required this.isSelected, required this.onTap});
  final void Function() onTap;
  final String text;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        padding:const EdgeInsets.fromLTRB(12, 16, 12, 16),
        decoration: ShapeDecoration(
          color: isSelected?AllColors.buttonBgColor:AllColors.tfFill,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1,
                color: isSelected?AllColors.buttonMainColor:AllColors.tfFill),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Center(
          child: Text(
              text,
              style: isSelected? Styles.textStyleMedium16(context).copyWith
                (color:AllColors.buttonMainColor ): Styles.textStyleMedium16(context)
          ),
        ),
      ),
    );
  }
}