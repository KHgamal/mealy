import 'package:flutter/material.dart';

import '../../../../core/common/res/colors.dart';

class MealInfoAlertDialog extends StatelessWidget {
  const MealInfoAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AllColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: const Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [],
      ),
    );
  }
}
