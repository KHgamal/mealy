import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/common/res/colors.dart';
import '../../../../core/common/res/styles.dart';

class ContainerWithArrow extends StatelessWidget {
  const ContainerWithArrow(
      {super.key,
      required this.image,
      required this.title,
      required this.icon,
      required this.textColor});

  final String image;
  final String title;
  final IconData icon;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 48,
        decoration: ShapeDecoration(
          color: AllColors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0XFFF0F0F0)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              SvgPicture.asset(image),
              const SizedBox(
                width: 5,
              ),
              Text(
                title,
                style: Styles.textStyleMedium16(context)
                    .copyWith(color: textColor),
              ),
              const Spacer(),
              Icon(icon),
            ],
          ),
        ),
      ),
    );
  }
}
