import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';

class WhiteButton extends StatefulWidget {
  const WhiteButton(
      {super.key,
      required this.txt,
      required this.onPressed,
      required this.high,
      required this.width,
      required this.radius,
      required this.style,
      this.border = true});

  final String txt;
  final void Function() onPressed;
  final double high;
  final double width;
  final double radius;
  final TextStyle style;
  final bool border;

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
                      : AllColors.white),
              borderRadius: BorderRadius.circular(widget.radius)),
          color: AllColors.white,
        ),
        width: widget.width,
        height: widget.high,
        child: Center(
          child: Text(
            widget.txt,
            style: widget.style,
          ),
        ),
      ),
    );
  }
}
