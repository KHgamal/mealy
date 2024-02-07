import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';

class WhiteButton extends StatefulWidget {
  const WhiteButton(
      {super.key,
      required this.txt,
      required this.onPressed,
      required this.high,
      this.width,
      required this.radius,
      required this.style,
      this.border = true,
      this.subTxt});

  final String txt;
  final void Function() onPressed;
  final double high;
  final double? width;
  final double radius;
  final TextStyle style;
  final bool border;
  final String? subTxt;

  @override
  State<WhiteButton> createState() => _WhiteButtonState();
}

class _WhiteButtonState extends State<WhiteButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  width: 1,
                  color: widget.border
                      ? AllColors.buttonMainColor
                      : AllColors.otpBg),
              borderRadius: BorderRadius.circular(widget.radius)),
          //color: AllColors.white,
        ),
        width: widget.width,
        height: widget.high,
        child: Center(
          child: Text.rich(
            TextSpan(text: widget.txt, style: widget.style, children: [
              TextSpan(
                text: widget.subTxt,
                style: Styles.textStyleMedium16(context)
                    .copyWith(color: AllColors.buttonMainColor),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
