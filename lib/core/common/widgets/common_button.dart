import 'package:flutter/material.dart';
import 'package:mealy/core/common/res/colors.dart';
import 'package:mealy/core/common/res/styles.dart';

class CommonButton extends StatefulWidget {
  const CommonButton({
    super.key,
    required this.txt,
    required this.onPressed,
    this.high,
    this.width,
    this.style,
    required this.radius,
  });
  final String txt;
  final void Function() onPressed;
  final double? high;
  final double? width;
  final double radius;
  final TextStyle? style;

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: IntrinsicHeight(
        child: Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(widget.radius)),
            color: AllColors.buttonMainColor,
          ),
          width: widget.width,
          height: widget.high, //MediaQuery.of(context).size.width * 0.914333,

          padding: const EdgeInsets.all(10),
          child: Center(
            child: Text(
              widget.txt,
              style: widget.style ??
                  Styles.textStyleMedium16(context)
                      .copyWith(color: AllColors.buttonTextColor),
            ),
          ),
        ),
      ),
    );
    /*ElevatedButton(
      onPressed: widget.onPressed,
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(AllColors.buttonMainColor),),
      child: Text(widget.txt),
    );*/
  }
}
