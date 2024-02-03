import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';

import '../../../generated/assets.dart';

class PinkButton extends StatefulWidget {
  const PinkButton(
      {super.key,
      required this.txt,
      required this.onPressed,
      this.high = 42,
      this.width,
      required this.radius,
      this.style,
      this.icon = false,
      this.border = false});

  final String txt;
  final void Function() onPressed;
  final double high;
  final double? width;
  final double radius;
  final TextStyle? style;
  final bool icon;
  final bool border;

  @override
  State<PinkButton> createState() => _PinkButtonState();
}

class _PinkButtonState extends State<PinkButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              side: widget.border
                  ? BorderSide(width: 1, color: AllColors.buttonMainColor)
                  : BorderSide.none,
              borderRadius: BorderRadius.circular(widget.radius)),
          color: AllColors.buttonBgColor,
        ),
        width: widget.width, //?? MediaQuery.of(context).size.width * 0.2,
        height: widget.high,
        padding: const EdgeInsets.all(10),
        child: widget.icon
            ? Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.txt,
                    style: widget.style ??
                        Styles.textStyleMedium12(context)
                            .copyWith(color: AllColors.buttonMainColor),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: SvgPicture.asset(Assets.imagesGps),
                  ),
                ],
              )
            : Center(
                child: Text(
                  widget.txt,
                  style: widget.style ??
                      Styles.textStyleMedium12(context)
                          .copyWith(color: AllColors.buttonMainColor),
                ),
              ),
      ),
    );
  }
}
