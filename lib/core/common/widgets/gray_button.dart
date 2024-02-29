import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';

class GrayButton extends StatelessWidget {
  const GrayButton({
    super.key,
    required this.txt,
    required this.onPressed,
    this.high,
    this.width,
    required this.radius,
    this.style,
  });

  final String txt;
  final void Function() onPressed;
  final double? high;
  final double? width;
  final double radius;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: AllColors.gray,
            ),
            borderRadius: BorderRadius.circular(radius),
          ),
          color: AllColors.tfFill,
        ),
        width: width,
        height: high,
        child: Center(
          child: Text(
            txt,
            style: style ?? Styles.textStyleMedium16(context),
          ),
        ),
      ),
    );
  }
}
