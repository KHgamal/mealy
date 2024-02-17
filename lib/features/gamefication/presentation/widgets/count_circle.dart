import 'package:flutter/material.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';
class CountCircle extends StatelessWidget {
  const CountCircle({super.key, required this.count});
final String count;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
          color:AllColors.buttonBgColor,
          shape: BoxShape.circle
      ),
      child: Center(
        child: Text(
            count,
            style:Styles.textStyleSemiBold12(context)
        ),
      ),
    );
  }
}
