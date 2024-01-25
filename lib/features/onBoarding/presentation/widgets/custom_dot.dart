import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 61: 15,
      height: 6,
      decoration: ShapeDecoration(
        color: isActive ? AllColors.buttonMainColor : const Color(0xffD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
