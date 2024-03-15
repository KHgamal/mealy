import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';

import '../../../Subscriptions/presentation/widgets/options_element.dart';
class PlanContainer extends StatelessWidget {
  const PlanContainer({super.key, required this.title, required this.price, required this.days, required this.limitation, required this.onTap});
  final String title,price,days,limitation;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: AllColors.unChoosenGender),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    title,
                    style:Styles.textStyleSemiBold18(context).copyWith(color: AllColors.mainText)
                ),
                Text(
                  price,
                  style:Styles.textStyleSemiBold18(context)
                ),

              ],
            ),
            const SizedBox(height: 16),
            OptionsElement(text: days,color: AllColors.mainText,),
            const SizedBox(height: 8),
            OptionsElement(text: limitation,color: AllColors.mainText,),
          ],
        ),
      ),
    );
  }
}
