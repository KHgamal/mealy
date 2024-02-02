import 'package:flutter/material.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';

class SubscriptionsStartDateContainer extends StatelessWidget {
  const SubscriptionsStartDateContainer({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
      Container(
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color:AllColors.buttonBgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      ),
      child: Text(
          'يبدا الاشتراك يوم 5 ديسمبر',
          style:Styles.textStyleMedium12(context).copyWith(
              color:AllColors.buttonMainColor
          )
      ),
    );
  }
}