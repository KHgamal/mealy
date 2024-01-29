import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/styles.dart';

import '../res/colors.dart';

class ButtonWithImage extends StatelessWidget {
  const ButtonWithImage({
    super.key,
    required this.onPressed,
    required this.radius,
    this.width,
    required this.height,
    required this.txt,
    required this.widget,
  });
  final void Function() onPressed;
  final double radius;
  final double? width;
  final double height;
  final String txt;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius)),
            color: AllColors.buttonBgColor,
          ),
          width: width ?? MediaQuery.of(context).size.width * 0.2,
          height: height,
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget,
              const SizedBox(
                width: 10,
              ),
              Text(
                txt,
                style: Styles.textStyleMedium12(context)
                    .copyWith(color: AllColors.buttonMainColor),
              ),
            ],
          ),
        ));
  }
}
