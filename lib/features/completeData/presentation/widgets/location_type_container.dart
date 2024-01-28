import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';

 class LocationTypeContainer extends StatelessWidget {
  const LocationTypeContainer({super.key, required this.image, required this.text, required this.isSelected});
  final String image;
  final String text;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 164/149,
      child: Container(
        decoration: ShapeDecoration(
          color:AllColors.otpBg,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1,
                color: isSelected?AllColors.buttonMainColor: AllColors.otpBg),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(image),
            const SizedBox(height: 18,),
            Text(
             text,
              style: isSelected? Styles.textStyleMedium18(context).copyWith
                (color:AllColors.buttonMainColor ): Styles.textStyleMedium18(context)
            ),
          ],
        ),
      ),
    );
  }
}
